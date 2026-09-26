.class Lcom/narvii/chat/MessageReadManager$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/MessageReadManager;->writeInBackground(Ljava/io/File;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$list:Ljava/util/ArrayList;

.field final synthetic val$wf:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lcom/narvii/chat/MessageReadManager$3;->val$wf:Ljava/io/File;

    .line 3
    .line 4
    iput-object p3, p0, Lcom/narvii/chat/MessageReadManager$3;->val$list:Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    .line 4
    :try_start_0
    new-instance v2, Lcom/narvii/util/SafeFileOutputStream;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/narvii/chat/MessageReadManager$3;->val$wf:Ljava/io/File;

    .line 7
    .line 8
    .line 9
    invoke-direct {v2, v3}, Lcom/narvii/util/SafeFileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 15
    .line 16
    iget-object v3, p0, Lcom/narvii/chat/MessageReadManager$3;->val$list:Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v4

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    .line 32
    check-cast v4, Ljava/util/UUID;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 36
    move-result-wide v5

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 43
    move-result-wide v4

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_3

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    .line 53
    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    const/4 v0, 0x1

    .line 56
    .line 57
    .line 58
    :try_start_2
    invoke-virtual {v2, v0}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    goto :goto_2

    .line 60
    :catchall_1
    move-exception v2

    .line 61
    move-object v7, v2

    .line 62
    move-object v2, v0

    .line 63
    move-object v0, v7

    .line 64
    goto :goto_3

    .line 65
    :catch_1
    move-exception v2

    .line 66
    move-object v7, v2

    .line 67
    move-object v2, v0

    .line 68
    move-object v0, v7

    .line 69
    .line 70
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    const-string v4, "fail to write "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/narvii/chat/MessageReadManager$3;->val$wf:Ljava/io/File;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    .line 89
    .line 90
    invoke-static {v3, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    .line 92
    if-eqz v2, :cond_1

    .line 93
    .line 94
    .line 95
    :try_start_4
    invoke-virtual {v2, v1}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 96
    :catch_2
    :cond_1
    :goto_2
    return-void

    .line 97
    .line 98
    :goto_3
    if-eqz v2, :cond_2

    .line 99
    .line 100
    .line 101
    :try_start_5
    invoke-virtual {v2, v1}, Lcom/narvii/util/SafeFileOutputStream;->close(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 102
    :catch_3
    :cond_2
    throw v0
.end method
