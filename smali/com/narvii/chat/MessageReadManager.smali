.class public Lcom/narvii/chat/MessageReadManager;
.super Ljava/lang/Object;
.source "MessageReadManager.java"

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

.field private localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field nvContext:Lcom/narvii/app/NVContext;

.field private prevInsert:Ljava/util/UUID;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/narvii/chat/MessageReadManager$1;

    invoke-direct {v0, p0}, Lcom/narvii/chat/MessageReadManager$1;-><init>(Lcom/narvii/chat/MessageReadManager;)V

    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p1, p0, Lcom/narvii/chat/MessageReadManager;->nvContext:Lcom/narvii/app/NVContext;

    const-string v0, "account"

    .line 60
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->account:Lcom/narvii/account/AccountService;

    const-string v0, "config"

    .line 61
    invoke-interface {p1, v0}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/config/ConfigService;

    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->config:Lcom/narvii/config/ConfigService;

    .line 62
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/chat/MessageReadManager;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/chat/MessageReadManager;)Lcom/narvii/account/AccountService;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/chat/MessageReadManager;->account:Lcom/narvii/account/AccountService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/narvii/chat/MessageReadManager;)Lcom/narvii/config/ConfigService;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/narvii/chat/MessageReadManager;->config:Lcom/narvii/config/ConfigService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/narvii/chat/MessageReadManager;Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/MessageReadManager;->resetSP(Ljava/lang/String;I)V

    return-void
.end method

.method public static cleanCache(Landroid/content/Context;)V
    .locals 2

    .line 86
    new-instance v0, Lcom/narvii/chat/MessageReadManager$2;

    const-string v1, "clean_message_read"

    invoke-direct {v0, v1, p0}, Lcom/narvii/chat/MessageReadManager$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

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

    .line 164
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_7

    .line 168
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 170
    iget-object v2, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .line 174
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    :try_start_1
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 177
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    .line 178
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v6

    .line 179
    new-instance v8, Ljava/util/UUID;

    invoke-direct {v8, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    :try_start_3
    invoke-virtual {v0, v8}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v8

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v3

    goto :goto_4

    :catch_1
    move-exception v4

    move-object v8, v1

    :goto_1
    move-object v1, v3

    goto :goto_2

    :catch_2
    move-object v8, v1

    :catch_3
    move-object v1, v3

    goto :goto_5

    :catch_4
    move-exception v3

    move-object v8, v1

    move-object v4, v3

    goto :goto_2

    :catch_5
    move-object v8, v1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v8, v1

    move-object v4, v2

    move-object v2, v8

    .line 184
    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to read "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_1

    .line 188
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_1
    if-eqz v2, :cond_6

    .line 191
    :goto_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_4
    if-eqz v1, :cond_2

    .line 188
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    if-eqz v2, :cond_3

    .line 191
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 195
    :catch_7
    :cond_3
    throw v0

    :catch_8
    move-object v2, v1

    move-object v8, v2

    :goto_5
    if-eqz v1, :cond_4

    .line 188
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9

    :cond_4
    if-eqz v2, :cond_6

    goto :goto_3

    :cond_5
    move-object v8, v1

    .line 197
    :catch_9
    :cond_6
    :goto_6
    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    .line 198
    iput-object v8, p0, Lcom/narvii/chat/MessageReadManager;->prevInsert:Ljava/util/UUID;

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method private getFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 3

    .line 112
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->nvContext:Lcom/narvii/app/NVContext;

    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "message_read"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 114
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private resetSP(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 106
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/narvii/chat/MessageReadManager;->getFile(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    .line 107
    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    .line 108
    iput-object v0, p0, Lcom/narvii/chat/MessageReadManager;->prevInsert:Ljava/util/UUID;

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

    .line 118
    iget-object p1, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    iget p1, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    .line 121
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    sget-object p1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    new-instance p1, Lcom/narvii/chat/MessageReadManager$3;

    const-string v1, "flush_message_read"

    invoke-direct {p1, v1, p0, v0}, Lcom/narvii/chat/MessageReadManager$3;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)V

    .line 160
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 77
    iget v0, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    if-lez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_0

    .line 79
    invoke-static {v0, v1}, Lcom/narvii/chat/MessageReadManager;->writeInBackground(Ljava/io/File;Ljava/util/Collection;)V

    :cond_0
    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    :cond_1
    return-void
.end method

.method public isMessageRead(Lcom/narvii/model/ChatMessage;)Z
    .locals 6

    .line 231
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 234
    :cond_0
    invoke-virtual {p1}, Lcom/narvii/model/ChatMessage;->id()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 237
    :cond_1
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-nez v0, :cond_2

    return v1

    .line 242
    :cond_2
    :try_start_0
    iget-object v0, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    iget-object v2, p0, Lcom/narvii/chat/MessageReadManager;->nvContext:Lcom/narvii/app/NVContext;

    const-string v3, "account"

    invoke-interface {v2, v3}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/account/AccountService;

    .line 248
    invoke-virtual {v2}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    .line 252
    :cond_3
    iget-object v3, p1, Lcom/narvii/model/ChatMessage;->author:Lcom/narvii/model/User;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/narvii/model/User;->uid:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/narvii/util/Utils;->isEqualsNotNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    .line 256
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->createdTime:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf731400

    cmp-long p1, v2, v4

    if-lez p1, :cond_5

    return v1

    .line 259
    :cond_5
    invoke-direct {p0}, Lcom/narvii/chat/MessageReadManager;->get()Ljava/util/LinkedHashSet;

    move-result-object p1

    if-nez p1, :cond_6

    return v1

    .line 263
    :cond_6
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :catch_0
    return v1
.end method

.method public run()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->file:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    if-nez v2, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v0, v1}, Lcom/narvii/chat/MessageReadManager;->writeInBackground(Ljava/io/File;Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 130
    iput v0, p0, Lcom/narvii/chat/MessageReadManager;->dirty:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setMessageRead(Lcom/narvii/model/ChatMessage;)V
    .locals 4

    .line 204
    iget-object p1, p1, Lcom/narvii/model/ChatMessage;->messageId:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    invoke-direct {p0}, Lcom/narvii/chat/MessageReadManager;->get()Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->prevInsert:Ljava/util/UUID;

    invoke-virtual {p1, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    add-int/lit16 p1, p1, -0x3e8

    if-lez p1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->hashSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    :cond_1
    invoke-direct {p0, v0}, Lcom/narvii/chat/MessageReadManager;->save(Ljava/util/Set;)V

    :catch_0
    :cond_2
    return-void
.end method

.method public start()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->account:Lcom/narvii/account/AccountService;

    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->config:Lcom/narvii/config/ConfigService;

    invoke-virtual {v1}, Lcom/narvii/config/ConfigService;->getCommunityId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/MessageReadManager;->resetSP(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.narvii.action.ACCOUNT_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/narvii/chat/MessageReadManager;->flush()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/narvii/chat/MessageReadManager;->resetSP(Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/narvii/chat/MessageReadManager;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/narvii/chat/MessageReadManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
