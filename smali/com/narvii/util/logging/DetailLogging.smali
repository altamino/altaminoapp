.class public Lcom/narvii/util/logging/DetailLogging;
.super Ljava/lang/Object;
.source "DetailLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/util/logging/DetailLogging$DLogger;,
        Lcom/narvii/util/logging/DetailLogging$LogEntry;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x100000

.field static final CHECK_INTERVAL:I = 0x7530

.field static final checkpoint:Ljava/lang/Runnable;

.field static enabled:Z

.field static logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

.field static started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/narvii/util/logging/DetailLogging$1;

    invoke-direct {v0}, Lcom/narvii/util/logging/DetailLogging$1;-><init>()V

    sput-object v0, Lcom/narvii/util/logging/DetailLogging;->checkpoint:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static flush()V
    .locals 11

    .line 113
    sget-object v0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    if-eqz v0, :cond_b

    sget-boolean v1, Lcom/narvii/util/logging/DetailLogging;->enabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/narvii/util/logging/DetailLogging$DLogger;->archive()V

    :cond_1
    const-string v0, "\\d+\\.log"

    .line 119
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    iget-object v1, v1, Lcom/narvii/util/logging/DetailLogging$DLogger;->dir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v1, v5

    .line 124
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 128
    :cond_3
    new-instance v0, Lcom/narvii/util/logging/DetailLogging$2;

    invoke-direct {v0}, Lcom/narvii/util/logging/DetailLogging$2;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    const-wide/16 v5, 0x0

    move-wide v7, v5

    .line 136
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 137
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-wide/32 v9, 0x100000

    cmp-long v3, v7, v9

    if-ltz v3, :cond_4

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 140
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 142
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_1

    :cond_5
    cmp-long v0, v7, v5

    if-nez v0, :cond_6

    return-void

    .line 149
    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    long-to-int v1, v7

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 152
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 154
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 155
    :goto_3
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_7

    .line 156
    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_2

    .line 162
    :cond_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 165
    array-length v1, v0

    const/high16 v3, 0x100000

    if-le v1, v3, :cond_a

    .line 167
    array-length v1, v0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v1, :cond_a

    .line 168
    aget-byte v6, v0, v5

    const/16 v7, 0xa

    if-ne v6, v7, :cond_9

    sub-int v6, v1, v5

    if-gt v6, v3, :cond_9

    .line 169
    new-array v1, v6, [B

    .line 170
    invoke-static {v0, v5, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 176
    :cond_a
    :goto_5
    invoke-static {}, Lcom/narvii/util/http/ApiRequest;->builder()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->post()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/narvii/util/http/ApiRequest$Builder;->verbose()Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    const-string v3, "/device/log"

    invoke-virtual {v1, v3}, Lcom/narvii/util/http/ApiRequest$Builder;->path(Ljava/lang/String;)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/narvii/util/http/ApiRequest$Builder;->body([B)Lcom/narvii/util/http/ApiRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/http/ApiRequest$Builder;->build()Lcom/narvii/util/http/ApiRequest;

    move-result-object v0

    .line 177
    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    const-string v3, "api"

    invoke-virtual {v1, v3}, Lcom/narvii/app/NVApplication;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/util/http/ApiService;

    .line 178
    new-instance v3, Lcom/narvii/util/logging/DetailLogging$3;

    const-class v4, Lcom/narvii/model/api/ApiResponse;

    invoke-direct {v3, v4, v2}, Lcom/narvii/util/logging/DetailLogging$3;-><init>(Ljava/lang/Class;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v0, v3}, Lcom/narvii/util/http/ApiService;->exec(Lcom/narvii/util/http/ApiRequest;Lcom/narvii/util/http/ApiResponseListener;)V

    :cond_b
    :goto_6
    return-void
.end method

.method public static init()V
    .locals 5

    .line 90
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->reportEnabledFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/narvii/util/logging/DetailLogging;->setReportEnabled(Z)V

    return-void
.end method

.method static reportEnabledFile()Ljava/io/File;
    .locals 3

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "dlog.d"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static setReportEnabled(Z)V
    .locals 3

    .line 57
    sget-boolean v0, Lcom/narvii/util/logging/DetailLogging;->enabled:Z

    if-eq p0, v0, :cond_3

    .line 58
    sput-boolean p0, Lcom/narvii/util/logging/DetailLogging;->enabled:Z

    if-eqz p0, :cond_0

    .line 60
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->reportEnabledFile()Ljava/io/File;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->reportEnabledFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 65
    :goto_0
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/narvii/util/logging/DetailLogging;->checkpoint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p0, :cond_1

    .line 67
    sget-object p0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    if-eqz p0, :cond_3

    .line 68
    sget-object p0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    sget-object v0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    sget-object p0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    iget-object v0, p0, Lcom/narvii/util/logging/DetailLogging$DLogger;->dir:Ljava/io/File;

    .line 70
    invoke-virtual {p0}, Lcom/narvii/util/logging/DetailLogging$DLogger;->dispose()V

    const/4 p0, 0x0

    .line 71
    sput-object p0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 72
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    goto :goto_1

    .line 75
    :cond_1
    sget-object p0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    if-nez p0, :cond_2

    .line 76
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/narvii/app/NVApplication;->instance()Lcom/narvii/app/NVApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "dlog"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 78
    new-instance v0, Lcom/narvii/util/logging/DetailLogging$DLogger;

    invoke-direct {v0, p0}, Lcom/narvii/util/logging/DetailLogging$DLogger;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    .line 79
    sget-object p0, Lcom/narvii/util/Log;->loggers:Ljava/util/ArrayList;

    sget-object v0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object p0, Lcom/narvii/util/logging/DetailLogging;->logger:Lcom/narvii/util/logging/DetailLogging$DLogger;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 82
    :cond_2
    sget-boolean p0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    if-eqz p0, :cond_3

    .line 83
    sget-object p0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    sget-object v0, Lcom/narvii/util/logging/DetailLogging;->checkpoint:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public static start()V
    .locals 2

    .line 94
    sget-boolean v0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 97
    sput-boolean v0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    .line 98
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/narvii/util/logging/DetailLogging;->checkpoint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    sget-boolean v0, Lcom/narvii/util/logging/DetailLogging;->enabled:Z

    if-eqz v0, :cond_1

    .line 100
    sget-object v0, Lcom/narvii/util/logging/DetailLogging;->checkpoint:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static stop()V
    .locals 2

    .line 105
    sget-boolean v0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/narvii/util/logging/DetailLogging;->flush()V

    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Lcom/narvii/util/logging/DetailLogging;->started:Z

    .line 108
    sget-object v0, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/narvii/util/logging/DetailLogging;->checkpoint:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
