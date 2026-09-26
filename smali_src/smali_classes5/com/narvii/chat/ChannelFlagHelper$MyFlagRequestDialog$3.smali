.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/video/pro/VideoPreProcessing$ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;


# direct methods
.method constructor <init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onProcessYUV([BIII)V
    .locals 6

    .line 1
    .line 2
    iget-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 3
    .line 4
    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    .line 8
    invoke-static {p4, v0}, Lcom/narvii/chat/ChannelFlagHelper;->p(Lcom/narvii/chat/ChannelFlagHelper;Z)V

    .line 9
    .line 10
    iget-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 11
    .line 12
    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 13
    .line 14
    .line 15
    invoke-static {p4}, Lcom/narvii/chat/ChannelFlagHelper;->f(Lcom/narvii/chat/ChannelFlagHelper;)Z

    .line 16
    move-result p4

    .line 17
    .line 18
    if-eqz p4, :cond_0

    .line 19
    return-void

    .line 20
    .line 21
    :cond_0
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->b(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V

    .line 27
    return-void

    .line 28
    .line 29
    .line 30
    :cond_1
    invoke-static {}, Lcom/narvii/chat/ChannelFlagHelper;->w()Ljava/lang/String;

    .line 31
    move-result-object p4

    .line 32
    .line 33
    const-string v0, "finish capture"

    .line 34
    .line 35
    .line 36
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    iget-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 39
    .line 40
    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 41
    .line 42
    .line 43
    invoke-static {p4}, Lcom/narvii/chat/ChannelFlagHelper;->s(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/io/File;

    .line 44
    move-result-object v0

    .line 45
    .line 46
    iput-object v0, p4, Lcom/narvii/chat/ChannelFlagHelper;->screenShootFile:Ljava/io/File;

    .line 47
    .line 48
    mul-int p4, p2, p3

    .line 49
    int-to-double v0, p4

    .line 50
    .line 51
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 52
    mul-double/2addr v0, v2

    .line 53
    double-to-int p4, v0

    .line 54
    .line 55
    new-array v1, p4, [B

    .line 56
    .line 57
    iget-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 58
    .line 59
    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 60
    .line 61
    .line 62
    invoke-static {p4, p1, v1, p2, p3}, Lcom/narvii/chat/ChannelFlagHelper;->u(Lcom/narvii/chat/ChannelFlagHelper;[B[BII)V

    .line 63
    .line 64
    new-instance p1, Landroid/graphics/YuvImage;

    .line 65
    .line 66
    const/16 v2, 0x11

    .line 67
    const/4 v5, 0x0

    .line 68
    move-object v0, p1

    .line 69
    move v3, p2

    .line 70
    move v4, p3

    .line 71
    .line 72
    .line 73
    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 74
    const/4 p2, 0x0

    .line 75
    .line 76
    :try_start_0
    new-instance p3, Ljava/io/FileOutputStream;

    .line 77
    .line 78
    iget-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 79
    .line 80
    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 81
    .line 82
    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper;->screenShootFile:Ljava/io/File;

    .line 83
    .line 84
    .line 85
    invoke-direct {p3, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    .line 87
    :try_start_1
    new-instance p2, Landroid/graphics/Rect;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    .line 91
    move-result p4

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    .line 95
    move-result v0

    .line 96
    const/4 v1, 0x0

    .line 97
    .line 98
    .line 99
    invoke-direct {p2, v1, v1, p4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 100
    .line 101
    const/16 p4, 0x46

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2, p4, p3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    .line 106
    .line 107
    invoke-static {p3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 108
    goto :goto_2

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    move-object p2, p3

    .line 111
    goto :goto_0

    .line 112
    :catch_0
    move-object p2, p3

    .line 113
    goto :goto_1

    .line 114
    :catchall_1
    move-exception p1

    .line 115
    .line 116
    .line 117
    :goto_0
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 118
    throw p1

    .line 119
    .line 120
    .line 121
    :catch_1
    :goto_1
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-static {}, Lcom/narvii/chat/ChannelFlagHelper;->w()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    .line 127
    const-string p2, "begin upload"

    .line 128
    .line 129
    .line 130
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    .line 133
    .line 134
    iget-object p1, p1, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    .line 135
    .line 136
    iget-object p2, p1, Lcom/narvii/chat/ChannelFlagHelper;->screenShootFile:Ljava/io/File;

    .line 137
    .line 138
    new-instance p3, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3$1;

    .line 139
    .line 140
    .line 141
    invoke-direct {p3, p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3$1;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;)V

    .line 142
    .line 143
    .line 144
    invoke-static {p1, p2, p3}, Lcom/narvii/chat/ChannelFlagHelper;->v(Lcom/narvii/chat/ChannelFlagHelper;Ljava/io/File;Lcom/narvii/util/Callback;)V

    .line 145
    return-void
.end method
