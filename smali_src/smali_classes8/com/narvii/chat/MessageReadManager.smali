.class public Lcom/narvii/chat/MessageReadManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "message_read"

.field public static final EXPIRE_DURATION:J = 0xf731400L

.field public static final MAX_ID_LIST_SIZE:I = 0x3e8


# instance fields
.field private account:Lcom/narvii/account/AccountService;

.field private config:Lcom/narvii/config/ConfigService;

.field private dirty:I

.field private file:Ljava/io/File;

.field private hashSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field nvContext:Lcom/narvii/app/NVContext;

.field private prevInsert:Ljava/util/UUID;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/narvii/chat/MessageReadManager$1;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/narvii/chat/MessageReadManager$1;-><init>(Lcom/narvii/chat/MessageReadManager;)V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/narvii/chat/MessageReadManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 13
    .line 14
    const-string v0, "account"

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    check-cast v0, Lcom/narvii/account/AccountService;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->account:Lcom/narvii/account/AccountService;

    .line 23
    .line 24
    const-string v0, "config"

    .line 25
    .line 26
    .line 27
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    .line 30
    check-cast v0, Lcom/narvii/config/ConfigService;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->config:Lcom/narvii/config/ConfigService;

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p1

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->b(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 40
    move-result-object p1

    .line 41
    .line 42
    iput-object p1, p0, Lcom/narvii/chat/MessageReadManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 43
    return-void
.end method

.method static bridge synthetic a(Lcom/narvii/chat/MessageReadManager;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/MessageReadManager;->account:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/narvii/chat/MessageReadManager;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/narvii/chat/MessageReadManager;->config:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/narvii/chat/MessageReadManager;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/MessageReadManager;->resetSP(Ljava/lang/String;I)V

    return-void
.end method

.method public static cleanCache(Landroid/content/Context;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/chat/MessageReadManager$2;

    .line 3
    .line 4
    const-string v1, "clean_message_read"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Lcom/narvii/chat/MessageReadManager$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 11
    return-void
.end method

.method private get()Ljava/util/LinkedHashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    .line 9
    .line 10
    if-nez v0, :cond_7

    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 16
    .line 17
    iget-object v2, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 21
    move-result-wide v2

    .line 22
    .line 23
    const-wide/16 v4, 0x0

    .line 24
    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-lez v2, :cond_6

    .line 28
    .line 29
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 35
    .line 36
    :try_start_1
    new-instance v3, Ljava/io/ObjectInputStream;

    .line 37
    .line 38
    .line 39
    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    .line 41
    .line 42
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readLong()J

    .line 43
    move-result-wide v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readLong()J

    .line 47
    move-result-wide v6

    .line 48
    .line 49
    new-instance v8, Ljava/util/UUID;

    .line 50
    .line 51
    .line 52
    invoke-direct {v8, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .line 54
    .line 55
    :try_start_3
    invoke-virtual {v0, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    move-object v1, v8

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    move-object v1, v3

    .line 60
    goto :goto_4

    .line 61
    :catch_0
    move-exception v1

    .line 62
    goto :goto_2

    .line 63
    :catch_1
    :goto_1
    move-object v1, v3

    .line 64
    goto :goto_5

    .line 65
    :catch_2
    move-exception v4

    .line 66
    move-object v8, v1

    .line 67
    move-object v1, v4

    .line 68
    goto :goto_2

    .line 69
    :catch_3
    move-object v8, v1

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    goto :goto_4

    .line 73
    :catch_4
    move-exception v3

    .line 74
    move-object v8, v1

    .line 75
    move-object v1, v3

    .line 76
    move-object v3, v8

    .line 77
    goto :goto_2

    .line 78
    :catch_5
    move-object v8, v1

    .line 79
    goto :goto_5

    .line 80
    :catchall_2
    move-exception v0

    .line 81
    move-object v2, v1

    .line 82
    goto :goto_4

    .line 83
    :catch_6
    move-exception v2

    .line 84
    move-object v3, v1

    .line 85
    move-object v8, v3

    .line 86
    move-object v1, v2

    .line 87
    move-object v2, v8

    .line 88
    goto :goto_2

    .line 89
    :catch_7
    move-object v2, v1

    .line 90
    move-object v8, v2

    .line 91
    goto :goto_5

    .line 92
    .line 93
    :goto_2
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    const-string v5, "fail to read "

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    iget-object v5, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 111
    .line 112
    .line 113
    invoke-static {v4, v1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 114
    .line 115
    if-eqz v3, :cond_1

    .line 116
    .line 117
    .line 118
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 119
    .line 120
    :cond_1
    if-eqz v2, :cond_2

    .line 121
    .line 122
    .line 123
    :goto_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 124
    :catch_8
    :cond_2
    move-object v1, v8

    .line 125
    goto :goto_6

    .line 126
    .line 127
    :goto_4
    if-eqz v1, :cond_3

    .line 128
    .line 129
    .line 130
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 131
    .line 132
    :cond_3
    if-eqz v2, :cond_4

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 136
    :catch_9
    :cond_4
    throw v0

    .line 137
    .line 138
    :goto_5
    if-eqz v1, :cond_5

    .line 139
    .line 140
    .line 141
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 142
    .line 143
    :cond_5
    if-eqz v2, :cond_2

    .line 144
    goto :goto_3

    .line 145
    .line 146
    :cond_6
    :goto_6
    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    .line 147
    .line 148
    iput-object v1, p0, Lcom/narvii/chat/MessageReadManager;->prevInsert:Ljava/util/UUID;

    .line 149
    .line 150
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    .line 151
    return-object v0
.end method

.method private getFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 3

    .line 1
    .line 2
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 5
    .line 6
    .line 7
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 12
    move-result-object v1

    .line 13
    .line 14
    const-string v2, "message_read"

    .line 15
    .line 16
    .line 17
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 21
    .line 22
    new-instance v1, Ljava/io/File;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p1, "_"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    .line 45
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    return-object v1
.end method

.method private resetSP(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move-object p1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/MessageReadManager;->getFile(Ljava/lang/String;I)Ljava/io/File;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->prevInsert:Ljava/util/UUID;

    .line 16
    return-void
.end method

.method private save(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget p1, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    .line 12
    .line 13
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    const-wide/16 v0, 0x3a98

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
.end method

.method private static writeInBackground(Ljava/io/File;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Collection<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    new-instance p1, Lcom/narvii/chat/MessageReadManager$3;

    .line 8
    .line 9
    const-string v1, "flush_message_read"

    .line 10
    .line 11
    .line 12
    invoke-direct {p1, v1, p0, v0}, Lcom/narvii/chat/MessageReadManager$3;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 16
    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    .line 3
    .line 4
    if-lez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/chat/MessageReadManager;->writeInBackground(Ljava/io/File;Ljava/util/Collection;)V

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    .line 18
    iput v0, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    .line 19
    :cond_1
    return-void
.end method

.method public isMessageRead(Lcom/narvii/model/ChatMessage;)Z
    .locals 6

    .line 1
    .line 2
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 3
    const/4 v1, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    return v1

    .line 14
    .line 15
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 16
    .line 17
    if-nez v0, :cond_2

    .line 18
    return v1

    .line 19
    .line 20
    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 24
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    iget-object v2, p0, Lcom/narvii/chat/MessageReadManager;->nvContext:Lcom/narvii/app/NVContext;

    .line 27
    .line 28
    const-string v3, "account"

    .line 29
    .line 30
    .line 31
    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    .line 34
    check-cast v2, Lcom/narvii/account/AccountService;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    if-nez v2, :cond_3

    .line 41
    return v1

    .line 42
    .line 43
    :cond_3
    iget-object v3, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    .line 44
    .line 45
    if-eqz v3, :cond_4

    .line 46
    .line 47
    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result v2

    .line 52
    .line 53
    if-eqz v2, :cond_4

    .line 54
    return v1

    .line 55
    .line 56
    .line 57
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 58
    move-result-wide v2

    .line 59
    .line 60
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 64
    move-result-wide v4

    .line 65
    sub-long/2addr v2, v4

    .line 66
    .line 67
    .line 68
    const-wide/32 v4, 0xf731400

    .line 69
    .line 70
    cmp-long p1, v2, v4

    .line 71
    .line 72
    if-lez p1, :cond_5

    .line 73
    return v1

    .line 74
    .line 75
    .line 76
    :cond_5
    invoke-direct {p0}, Lcom/narvii/chat/MessageReadManager;->get()Ljava/util/LinkedHashSet;

    .line 77
    move-result-object p1

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    return v1

    .line 81
    .line 82
    .line 83
    :cond_6
    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 84
    move-result p1

    .line 85
    return p1

    .line 86
    :catch_0
    return v1
.end method

.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget v2, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {v0, v1}, Lcom/narvii/chat/MessageReadManager;->writeInBackground(Ljava/io/File;Ljava/util/Collection;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    .line 19
    iput v0, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public setMessageRead(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 9
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/narvii/chat/MessageReadManager;->get()Ljava/util/LinkedHashSet;

    .line 13
    move-result-object v0

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->prevInsert:Ljava/util/UUID;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 33
    move-result p1

    .line 34
    .line 35
    add-int/lit16 p1, p1, -0x3e8

    .line 36
    .line 37
    if-lez p1, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x0

    .line 45
    .line 46
    :goto_0
    if-ge v2, p1, :cond_1

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v3

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    goto :goto_0

    .line 62
    .line 63
    .line 64
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/chat/MessageReadManager;->save(Ljava/util/Set;)V

    .line 65
    :catch_0
    :cond_2
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->account:Lcom/narvii/account/AccountService;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->config:Lcom/narvii/config/ConfigService;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    .line 12
    move-result v1

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/MessageReadManager;->resetSP(Ljava/lang/String;I)V

    .line 16
    .line 17
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 20
    .line 21
    new-instance v2, Landroid/content/IntentFilter;

    .line 22
    .line 23
    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    .line 24
    .line 25
    .line 26
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 30
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/narvii/chat/MessageReadManager;->flush()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/MessageReadManager;->resetSP(Ljava/lang/String;I)V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->localBroadcastManager:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->f(Landroid/content/BroadcastReceiver;)V

    .line 16
    return-void
.end method
