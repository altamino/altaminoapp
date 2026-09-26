.class public final Lffmpeg/executable/a$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lffmpeg/executable/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFFMpegEditorDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FFMpegEditorDelegate.kt\nffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,691:1\n37#2,2:692\n*S KotlinDebug\n*F\n+ 1 FFMpegEditorDelegate.kt\nffmpeg/executable/FFMpegEditorDelegate$StreamingExecutor\n*L\n529#1:692,2\n*E\n"
.end annotation


# instance fields
.field private callback:Lg7/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final config:Lg7/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic this$0:Lffmpeg/executable/a;

.field private threadId:J


# direct methods
.method public constructor <init>(Lffmpeg/executable/a;Lg7/d;Lg7/c;)V
    .locals 1
    .param p1    # Lffmpeg/executable/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lg7/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg7/d;",
            "Lg7/c;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "config"

    .line 3
    .line 4
    .line 5
    invoke-static {p2, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    iput-object p1, p0, Lffmpeg/executable/a$b;->this$0:Lffmpeg/executable/a;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 11
    .line 12
    iput-object p2, p0, Lffmpeg/executable/a$b;->config:Lg7/d;

    .line 13
    .line 14
    iput-object p3, p0, Lffmpeg/executable/a$b;->callback:Lg7/c;

    .line 15
    .line 16
    const-wide/16 p1, -0x1

    .line 17
    .line 18
    iput-wide p1, p0, Lffmpeg/executable/a$b;->threadId:J

    .line 19
    return-void
.end method

.method public static synthetic a(Lffmpeg/executable/a$b;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lffmpeg/executable/a$b;->f(Lffmpeg/executable/a$b;F)V

    return-void
.end method

.method public static synthetic b(Lffmpeg/executable/a$b;F)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lffmpeg/executable/a$b;->e(Lffmpeg/executable/a$b;F)V

    return-void
.end method

.method private static final e(Lffmpeg/executable/a$b;F)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    new-instance v0, Lffmpeg/executable/c;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lffmpeg/executable/c;-><init>(Lffmpeg/executable/a$b;F)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/narvii/util/Utils;->post(Ljava/lang/Runnable;)V

    .line 15
    return-void
.end method

.method private static final f(Lffmpeg/executable/a$b;F)V
    .locals 1

    .line 1
    .line 2
    .line 3
    const-string/jumbo v0, "this$0"

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    iget-object p0, p0, Lffmpeg/executable/a$b;->callback:Lg7/c;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-interface {p0, p1}, Lg7/c;->onProgress(F)V

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lffmpeg/executable/a$b;->callback:Lg7/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lg7/c;->onCancel()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    .line 10
    iput-object v0, p0, Lffmpeg/executable/a$b;->callback:Lg7/c;

    .line 11
    .line 12
    iget-wide v0, p0, Lffmpeg/executable/a$b;->threadId:J

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->removeProgressCallback(J)V

    .line 16
    const/4 v0, 0x1

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 20
    .line 21
    iget-wide v0, p0, Lffmpeg/executable/a$b;->threadId:J

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->abort(J)V

    .line 25
    return-void
.end method

.method protected varargs d([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1    # [Ljava/lang/Void;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "params"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string p1, "CountTest"

    .line 8
    .line 9
    const-string v0, "1"

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    iget-object v0, p0, Lffmpeg/executable/a$b;->config:Lg7/d;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lg7/d;->m()Ljava/util/List;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object v0

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    .line 39
    check-cast v1, Lcom/narvii/video/model/AVClipInfoPack;

    .line 40
    .line 41
    iget-object v2, p0, Lffmpeg/executable/a$b;->this$0:Lffmpeg/executable/a;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/narvii/video/model/AVClipInfoPack;->inputPath:Ljava/lang/String;

    .line 44
    .line 45
    const-string v3, "inputPath"

    .line 46
    .line 47
    .line 48
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lffmpeg/executable/a;->fetchStreamingInfo(Ljava/lang/String;)Lcom/narvii/video/model/StreamInfo;

    .line 52
    move-result-object v1

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_1

    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Lffmpeg/executable/a$b;->this$0:Lffmpeg/executable/a;

    .line 61
    .line 62
    iget-object v1, p0, Lffmpeg/executable/a$b;->config:Lg7/d;

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1, p1}, Lffmpeg/executable/a;->e(Lffmpeg/executable/a;Lg7/d;Ljava/util/ArrayList;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 69
    move-result-object p1

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    .line 73
    move-result-wide v0

    .line 74
    .line 75
    iput-wide v0, p0, Lffmpeg/executable/a$b;->threadId:J

    .line 76
    .line 77
    iget-object p1, p0, Lffmpeg/executable/a$b;->callback:Lg7/c;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    iget-object p1, p0, Lffmpeg/executable/a$b;->config:Lg7/d;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lg7/d;->s()Z

    .line 85
    move-result p1

    .line 86
    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    iget-wide v0, p0, Lffmpeg/executable/a$b;->threadId:J

    .line 90
    .line 91
    new-instance p1, Lffmpeg/executable/b;

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, p0}, Lffmpeg/executable/b;-><init>(Lffmpeg/executable/a$b;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0, v1, p1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->addProgressCallback(JLcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;)V

    .line 98
    .line 99
    :cond_1
    iget-object p1, p0, Lffmpeg/executable/a$b;->this$0:Lffmpeg/executable/a;

    .line 100
    .line 101
    iget-object v0, p0, Lffmpeg/executable/a$b;->config:Lg7/d;

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v0}, Lffmpeg/executable/a;->c(Lffmpeg/executable/a;Lg7/d;)Ljava/util/List;

    .line 105
    move-result-object p1

    .line 106
    .line 107
    check-cast p1, Ljava/util/Collection;

    .line 108
    const/4 v0, 0x0

    .line 109
    .line 110
    new-array v1, v0, [Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    move-result-object p1

    .line 115
    .line 116
    check-cast p1, [Ljava/lang/String;

    .line 117
    .line 118
    iget-wide v1, p0, Lffmpeg/executable/a$b;->threadId:J

    .line 119
    .line 120
    iget-object v3, p0, Lffmpeg/executable/a$b;->config:Lg7/d;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Lg7/d;->e()I

    .line 124
    move-result v3

    .line 125
    .line 126
    iget-object v4, p0, Lffmpeg/executable/a$b;->config:Lg7/d;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Lg7/d;->s()Z

    .line 130
    move-result v4

    .line 131
    .line 132
    .line 133
    invoke-static {p1, v1, v2, v3, v4}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->run([Ljava/lang/String;JIZ)I

    .line 134
    move-result p1

    .line 135
    .line 136
    if-nez p1, :cond_2

    .line 137
    const/4 v0, 0x1

    .line 138
    .line 139
    .line 140
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .line 143
    iget-wide v0, p0, Lffmpeg/executable/a$b;->threadId:J

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->removeProgressCallback(J)V

    .line 147
    return-object p1

    .line 148
    .line 149
    :goto_1
    iget-wide v0, p0, Lffmpeg/executable/a$b;->threadId:J

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->removeProgressCallback(J)V

    .line 153
    throw p1

    .line 154
    .line 155
    :catch_0
    iget-wide v0, p0, Lffmpeg/executable/a$b;->threadId:J

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->removeProgressCallback(J)V

    .line 159
    .line 160
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 161
    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, [Ljava/lang/Void;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lffmpeg/executable/a$b;->d([Ljava/lang/Void;)Ljava/lang/Boolean;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected g(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lffmpeg/executable/a$b;->callback:Lg7/c;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Lg7/c;->onCancel()V

    .line 8
    .line 9
    :cond_0
    iget-wide v0, p0, Lffmpeg/executable/a$b;->threadId:J

    .line 10
    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/narvii/editors/ffmpeg/FFmpegJni;->removeProgressCallback(J)V

    .line 13
    return-void
.end method

.method protected h(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lffmpeg/executable/a$b;->callback:Lg7/c;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lg7/b;->onSuccess()V

    .line 16
    goto :goto_0

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-interface {v0}, Lg7/b;->onFail()V

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lffmpeg/executable/a$b;->g(Ljava/lang/Boolean;)V

    .line 6
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Boolean;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lffmpeg/executable/a$b;->h(Ljava/lang/Boolean;)V

    .line 6
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lffmpeg/executable/a$b;->callback:Lg7/c;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-interface {v0}, Lg7/b;->onStart()V

    .line 8
    :cond_0
    return-void
.end method
