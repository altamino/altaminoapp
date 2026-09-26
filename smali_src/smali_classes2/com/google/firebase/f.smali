.class public Lcom/google/firebase/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/f$b;,
        Lcom/google/firebase/f$c;,
        Lcom/google/firebase/f$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_APP_NAME:Ljava/lang/String; = "[DEFAULT]"
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static final INSTANCES:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field private static final LOG_TAG:Ljava/lang/String; = "FirebaseApp"


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final backgroundStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final componentRuntime:Lcom/google/firebase/components/p;

.field private final dataCollectionConfigStorage:Lcom/google/firebase/components/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/components/y<",
            "Ls4/a;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultHeartBeatController:Lo4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo4/b<",
            "Lm4/f;",
            ">;"
        }
    .end annotation
.end field

.field private final deleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lifecycleListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/g;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final options:Lcom/google/firebase/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/google/firebase/f;->LOCK:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Landroidx/collection/ArrayMap;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 13
    .line 14
    sput-object v0, Lcom/google/firebase/f;->INSTANCES:Ljava/util/Map;

    .line 15
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/n;)V
    .locals 4

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/firebase/f;->automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/firebase/f;->deleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/firebase/f;->backgroundStateChangeListeners:Ljava/util/List;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/firebase/f;->lifecycleListeners:Ljava/util/List;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    check-cast v0, Landroid/content/Context;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/firebase/f;->applicationContext:Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object p2

    .line 45
    .line 46
    iput-object p2, p0, Lcom/google/firebase/f;->name:Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object p2

    .line 51
    .line 52
    check-cast p2, Lcom/google/firebase/n;

    .line 53
    .line 54
    iput-object p2, p0, Lcom/google/firebase/f;->options:Lcom/google/firebase/n;

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->b()Lcom/google/firebase/o;

    .line 58
    move-result-object p2

    .line 59
    .line 60
    const-string v0, "Firebase"

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Le5/c;->b(Ljava/lang/String;)V

    .line 64
    .line 65
    const-string v0, "ComponentDiscovery"

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Le5/c;->b(Ljava/lang/String;)V

    .line 69
    .line 70
    const-class v0, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, Lcom/google/firebase/components/g;->c(Landroid/content/Context;Ljava/lang/Class;)Lcom/google/firebase/components/g;

    .line 74
    move-result-object v0

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/google/firebase/components/g;->b()Ljava/util/List;

    .line 78
    move-result-object v0

    .line 79
    .line 80
    .line 81
    invoke-static {}, Le5/c;->a()V

    .line 82
    .line 83
    const-string v2, "Runtime"

    .line 84
    .line 85
    .line 86
    invoke-static {v2}, Le5/c;->b(Ljava/lang/String;)V

    .line 87
    .line 88
    sget-object v2, Lcom/google/firebase/concurrent/b0;->INSTANCE:Lcom/google/firebase/concurrent/b0;

    .line 89
    .line 90
    .line 91
    invoke-static {v2}, Lcom/google/firebase/components/p;->m(Ljava/util/concurrent/Executor;)Lcom/google/firebase/components/p$b;

    .line 92
    move-result-object v2

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Lcom/google/firebase/components/p$b;->d(Ljava/util/Collection;)Lcom/google/firebase/components/p$b;

    .line 96
    move-result-object v0

    .line 97
    .line 98
    new-instance v2, Lcom/google/firebase/FirebaseCommonRegistrar;

    .line 99
    .line 100
    .line 101
    invoke-direct {v2}, Lcom/google/firebase/FirebaseCommonRegistrar;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/p$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/p$b;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    new-instance v2, Lcom/google/firebase/concurrent/ExecutorsRegistrar;

    .line 108
    .line 109
    .line 110
    invoke-direct {v2}, Lcom/google/firebase/concurrent/ExecutorsRegistrar;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/p$b;->c(Lcom/google/firebase/components/ComponentRegistrar;)Lcom/google/firebase/components/p$b;

    .line 114
    move-result-object v0

    .line 115
    .line 116
    const-class v2, Landroid/content/Context;

    .line 117
    .line 118
    new-array v3, v1, [Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {p1, v2, v3}, Lcom/google/firebase/components/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/c;

    .line 122
    move-result-object v2

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/p$b;->b(Lcom/google/firebase/components/c;)Lcom/google/firebase/components/p$b;

    .line 126
    move-result-object v0

    .line 127
    .line 128
    const-class v2, Lcom/google/firebase/f;

    .line 129
    .line 130
    new-array v3, v1, [Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {p0, v2, v3}, Lcom/google/firebase/components/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/c;

    .line 134
    move-result-object v2

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2}, Lcom/google/firebase/components/p$b;->b(Lcom/google/firebase/components/c;)Lcom/google/firebase/components/p$b;

    .line 138
    move-result-object v0

    .line 139
    .line 140
    const-class v2, Lcom/google/firebase/n;

    .line 141
    .line 142
    new-array v3, v1, [Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-static {p3, v2, v3}, Lcom/google/firebase/components/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/c;

    .line 146
    move-result-object p3

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, p3}, Lcom/google/firebase/components/p$b;->b(Lcom/google/firebase/components/c;)Lcom/google/firebase/components/p$b;

    .line 150
    move-result-object p3

    .line 151
    .line 152
    new-instance v0, Le5/b;

    .line 153
    .line 154
    .line 155
    invoke-direct {v0}, Le5/b;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, v0}, Lcom/google/firebase/components/p$b;->g(Lcom/google/firebase/components/j;)Lcom/google/firebase/components/p$b;

    .line 159
    move-result-object p3

    .line 160
    .line 161
    .line 162
    invoke-static {p1}, Landroidx/core/os/UserManagerCompat;->a(Landroid/content/Context;)Z

    .line 163
    move-result v0

    .line 164
    .line 165
    if-eqz v0, :cond_0

    .line 166
    .line 167
    .line 168
    invoke-static {}, Lcom/google/firebase/provider/FirebaseInitProvider;->c()Z

    .line 169
    move-result v0

    .line 170
    .line 171
    if-eqz v0, :cond_0

    .line 172
    .line 173
    const-class v0, Lcom/google/firebase/o;

    .line 174
    .line 175
    new-array v1, v1, [Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    invoke-static {p2, v0, v1}, Lcom/google/firebase/components/c;->s(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lcom/google/firebase/components/c;

    .line 179
    move-result-object p2

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3, p2}, Lcom/google/firebase/components/p$b;->b(Lcom/google/firebase/components/c;)Lcom/google/firebase/components/p$b;

    .line 183
    .line 184
    .line 185
    :cond_0
    invoke-virtual {p3}, Lcom/google/firebase/components/p$b;->e()Lcom/google/firebase/components/p;

    .line 186
    move-result-object p2

    .line 187
    .line 188
    iput-object p2, p0, Lcom/google/firebase/f;->componentRuntime:Lcom/google/firebase/components/p;

    .line 189
    .line 190
    .line 191
    invoke-static {}, Le5/c;->a()V

    .line 192
    .line 193
    new-instance p3, Lcom/google/firebase/components/y;

    .line 194
    .line 195
    new-instance v0, Lcom/google/firebase/d;

    .line 196
    .line 197
    .line 198
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/d;-><init>(Lcom/google/firebase/f;Landroid/content/Context;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p3, v0}, Lcom/google/firebase/components/y;-><init>(Lo4/b;)V

    .line 202
    .line 203
    iput-object p3, p0, Lcom/google/firebase/f;->dataCollectionConfigStorage:Lcom/google/firebase/components/y;

    .line 204
    .line 205
    const-class p1, Lm4/f;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, p1}, Lcom/google/firebase/components/p;->b(Ljava/lang/Class;)Lo4/b;

    .line 209
    move-result-object p1

    .line 210
    .line 211
    iput-object p1, p0, Lcom/google/firebase/f;->defaultHeartBeatController:Lo4/b;

    .line 212
    .line 213
    new-instance p1, Lcom/google/firebase/e;

    .line 214
    .line 215
    .line 216
    invoke-direct {p1, p0}, Lcom/google/firebase/e;-><init>(Lcom/google/firebase/f;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1}, Lcom/google/firebase/f;->g(Lcom/google/firebase/f$a;)V

    .line 220
    .line 221
    .line 222
    invoke-static {}, Le5/c;->a()V

    .line 223
    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/f;->w(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/f;Landroid/content/Context;)Ls4/a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/f;->v(Landroid/content/Context;)Ls4/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/f;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/google/firebase/f;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/f;->p()V

    .line 4
    return-void
.end method

.method static synthetic e(Lcom/google/firebase/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lcom/google/firebase/f;->automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/google/firebase/f;Z)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/google/firebase/f;->y(Z)V

    .line 4
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/f;->deleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    const-string v1, "FirebaseApp was deleted"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static l()Lcom/google/firebase/f;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/f;->LOCK:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/f;->INSTANCES:Ljava/util/Map;

    .line 6
    .line 7
    const-string v2, "[DEFAULT]"

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    check-cast v1, Lcom/google/firebase/f;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v2, v1, Lcom/google/firebase/f;->defaultHeartBeatController:Lo4/b;

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Lo4/b;->get()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 22
    .line 23
    check-cast v2, Lm4/f;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Lm4/f;->l()Lcom/google/android/gms/tasks/Task;

    .line 27
    monitor-exit v0

    .line 28
    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_0

    .line 31
    .line 32
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    const-string v3, "Default FirebaseApp is not initialized in this process "

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/google/android/gms/common/util/ProcessUtils;->getMyProcessName()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v2

    .line 59
    .line 60
    .line 61
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    throw v1

    .line 63
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw v1
.end method

.method private p()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/f;->applicationContext:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Landroidx/core/os/UserManagerCompat;->a(Landroid/content/Context;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    const-string v1, "FirebaseApp"

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    const-string v2, "Device in Direct Boot Mode: postponing initialization of Firebase APIs for app "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/firebase/f;->applicationContext:Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/firebase/f$c;->a(Landroid/content/Context;)V

    .line 42
    goto :goto_0

    .line 43
    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    const-string v2, "Device unlocked: initializing all Firebase APIs for app "

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    .line 65
    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    iget-object v0, p0, Lcom/google/firebase/f;->componentRuntime:Lcom/google/firebase/components/p;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/google/firebase/f;->u()Z

    .line 72
    move-result v1

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/google/firebase/components/p;->p(Z)V

    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/firebase/f;->defaultHeartBeatController:Lo4/b;

    .line 78
    .line 79
    .line 80
    invoke-interface {v0}, Lo4/b;->get()Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    .line 83
    check-cast v0, Lm4/f;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lm4/f;->l()Lcom/google/android/gms/tasks/Task;

    .line 87
    :goto_0
    return-void
.end method

.method public static q(Landroid/content/Context;)Lcom/google/firebase/f;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/google/firebase/f;->LOCK:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/google/firebase/f;->INSTANCES:Ljava/util/Map;

    .line 6
    .line 7
    const-string v2, "[DEFAULT]"

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/firebase/f;->l()Lcom/google/firebase/f;

    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/n;->a(Landroid/content/Context;)Lcom/google/firebase/n;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const-string p0, "FirebaseApp"

    .line 30
    .line 31
    const-string v1, "Default FirebaseApp failed to initialize because no default options were found. This usually means that com.google.gms:google-services was not applied to your gradle project."

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    monitor-exit v0

    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-static {p0, v1}, Lcom/google/firebase/f;->r(Landroid/content/Context;Lcom/google/firebase/n;)Lcom/google/firebase/f;

    .line 41
    move-result-object p0

    .line 42
    monitor-exit v0

    .line 43
    return-object p0

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public static r(Landroid/content/Context;Lcom/google/firebase/n;)Lcom/google/firebase/f;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "[DEFAULT]"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1, v0}, Lcom/google/firebase/f;->s(Landroid/content/Context;Lcom/google/firebase/n;Ljava/lang/String;)Lcom/google/firebase/f;

    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static s(Landroid/content/Context;Lcom/google/firebase/n;Ljava/lang/String;)Lcom/google/firebase/f;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/firebase/f$b;->a(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/firebase/f;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p2

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    move-result-object p0

    .line 19
    .line 20
    :goto_0
    sget-object v0, Lcom/google/firebase/f;->LOCK:Ljava/lang/Object;

    .line 21
    monitor-enter v0

    .line 22
    .line 23
    :try_start_0
    sget-object v1, Lcom/google/firebase/f;->INSTANCES:Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    .line 29
    xor-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    const-string v4, "FirebaseApp name "

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v4, " already exists!"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 55
    .line 56
    const-string v2, "Application context cannot be null."

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    new-instance v2, Lcom/google/firebase/f;

    .line 62
    .line 63
    .line 64
    invoke-direct {v2, p0, p2, p1}, Lcom/google/firebase/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/n;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    invoke-direct {v2}, Lcom/google/firebase/f;->p()V

    .line 72
    return-object v2

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0
.end method

.method private synthetic v(Landroid/content/Context;)Ls4/a;
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ls4/a;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/f;->o()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/firebase/f;->componentRuntime:Lcom/google/firebase/components/p;

    .line 9
    .line 10
    const-class v3, Ll4/c;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, v3}, Lcom/google/firebase/components/p;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    .line 16
    check-cast v2, Ll4/c;

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, v1, v2}, Ls4/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ll4/c;)V

    .line 20
    return-object v0
.end method

.method private synthetic w(Z)V
    .locals 0

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/firebase/f;->defaultHeartBeatController:Lo4/b;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lo4/b;->get()Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    check-cast p1, Lm4/f;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lm4/f;->l()Lcom/google/android/gms/tasks/Task;

    .line 14
    :cond_0
    return-void
.end method

.method private static x(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private y(Z)V
    .locals 2

    .line 1
    .line 2
    const-string v0, "FirebaseApp"

    .line 3
    .line 4
    const-string v1, "Notifying background state change listeners."

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/firebase/f;->backgroundStateChangeListeners:Ljava/util/List;

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    check-cast v1, Lcom/google/firebase/f$a;

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, p1}, Lcom/google/firebase/f$a;->onBackgroundStateChanged(Z)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    .line 2
    instance-of v0, p1, Lcom/google/firebase/f;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/f;->name:Ljava/lang/String;

    .line 9
    .line 10
    check-cast p1, Lcom/google/firebase/f;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public g(Lcom/google/firebase/f$a;)V
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/f;->automaticResourceManagementEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    move-result v0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->getInstance()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->isInBackground()Z

    .line 19
    move-result v0

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Lcom/google/firebase/f$a;->onBackgroundStateChanged(Z)V

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/f;->backgroundStateChangeListeners:Ljava/util/List;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public h(Lcom/google/firebase/g;)V
    .locals 1
    .param p1    # Lcom/google/firebase/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/f;->lifecycleListeners:Ljava/util/List;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/firebase/f;->name:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/f;->componentRuntime:Lcom/google/firebase/components/p;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/firebase/components/p;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public k()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/f;->applicationContext:Landroid/content/Context;

    .line 6
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/f;->name:Ljava/lang/String;

    .line 6
    return-object v0
.end method

.method public n()Lcom/google/firebase/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/f;->options:Lcom/google/firebase/n;

    .line 6
    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 13
    move-result-object v2

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "+"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/firebase/f;->n()Lcom/google/firebase/n;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/firebase/n;->c()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    .line 40
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 41
    move-result-object v2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 45
    move-result-object v1

    .line 46
    .line 47
    .line 48
    invoke-static {v1}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafeNoPadding([B)Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method

.method public t()Z
    .locals 1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/firebase/f;->i()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/f;->dataCollectionConfigStorage:Lcom/google/firebase/components/y;

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/firebase/components/y;->get()Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    check-cast v0, Ls4/a;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ls4/a;->b()Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/firebase/f;->name:Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-string v1, "options"

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/firebase/f;->options:Lcom/google/firebase/n;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public u()Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    .line 2
    const-string v0, "[DEFAULT]"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/f;->m()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method
