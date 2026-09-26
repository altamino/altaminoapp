.class public final Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/videotemplate/VideoTemplateManager;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/videotemplate/VideoTemplateManager;


# direct methods
.method constructor <init>(Lcom/narvii/videotemplate/VideoTemplateManager;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTaskRunning$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    .line 11
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/narvii/videotemplate/VideoTemplateManager;->getCtx()Lcom/narvii/app/NVContext;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "template/template.pid"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    sget-object v1, Lkotlin/text/d;->US_ASCII:Ljava/nio/charset/Charset;

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/io/j;->h(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    move-result v0

    .line 42
    .line 43
    new-instance v1, Ljava/io/File;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    const-string v3, "/proc/"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    const-string v0, "/mem"

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 72
    move-result v0

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    const-wide/16 v0, 0x3e8

    .line 77
    .line 78
    .line 79
    invoke-static {p0, v0, v1}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_0

    .line 83
    .line 84
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 85
    .line 86
    .line 87
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 88
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    const-string v2, "check pid fail "

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    .line 107
    const-string v1, "NV_EGL"

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 113
    .line 114
    .line 115
    invoke-static {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    .line 116
    move-result-object v0

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 120
    move-result v0

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 125
    .line 126
    .line 127
    invoke-static {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getTempOutVideoFile$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Ljava/io/File;

    .line 128
    move-result-object v0

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 132
    .line 133
    :cond_2
    iget-object v0, p0, Lcom/narvii/videotemplate/VideoTemplateManager$pidCheckRunnable$1;->this$0:Lcom/narvii/videotemplate/VideoTemplateManager;

    .line 134
    .line 135
    .line 136
    invoke-static {v0}, Lcom/narvii/videotemplate/VideoTemplateManager;->access$getCallback$p(Lcom/narvii/videotemplate/VideoTemplateManager;)Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;

    .line 137
    move-result-object v0

    .line 138
    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    sget v1, Lcom/narvii/videotemplate/VideoTemplateJni;->ERROR_ABORT:I

    .line 142
    .line 143
    .line 144
    invoke-interface {v0, v1}, Lcom/narvii/videotemplate/VideoTemplateJni$IVideoTemplateEventCallback;->onError(I)V

    .line 145
    :cond_3
    :goto_1
    return-void
.end method
