.class Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;
.super Ljava/lang/Object;
.source "ChannelFlagHelper.java"

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

    .line 333
    iput-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProcessYUV([BIII)V
    .locals 6

    .line 336
    iget-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcom/narvii/chat/ChannelFlagHelper;->access$1402(Lcom/narvii/chat/ChannelFlagHelper;Z)Z

    .line 337
    iget-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {p4}, Lcom/narvii/chat/ChannelFlagHelper;->access$1500(Lcom/narvii/chat/ChannelFlagHelper;)Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 341
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    invoke-static {p1}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->access$1600(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;)V

    return-void

    .line 344
    :cond_1
    invoke-static {}, Lcom/narvii/chat/ChannelFlagHelper;->access$1100()Ljava/lang/String;

    move-result-object p4

    const-string v0, "finish capture"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {p4}, Lcom/narvii/chat/ChannelFlagHelper;->access$1700(Lcom/narvii/chat/ChannelFlagHelper;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p4, Lcom/narvii/chat/ChannelFlagHelper;->screenShootFile:Ljava/io/File;

    mul-int p4, p2, p3

    int-to-double v0, p4

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 346
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int p4, v0

    .line 347
    new-array v1, p4, [B

    .line 348
    iget-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    invoke-static {p4, p1, v1, p2, p3}, Lcom/narvii/chat/ChannelFlagHelper;->access$1800(Lcom/narvii/chat/ChannelFlagHelper;[B[BII)V

    .line 349
    new-instance p1, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    const/4 p2, 0x0

    .line 352
    :try_start_0
    new-instance p3, Ljava/io/FileOutputStream;

    iget-object p4, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    iget-object p4, p4, Lcom/narvii/chat/ChannelFlagHelper;->screenShootFile:Ljava/io/File;

    invoke-direct {p3, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 353
    :try_start_1
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getWidth()I

    move-result p4

    invoke-virtual {p1}, Landroid/graphics/YuvImage;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1, p4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p4, 0x46

    invoke-virtual {p1, p2, p4, p3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    invoke-static {p3}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object p2, p3

    goto :goto_0

    :catch_0
    move-object p2, p3

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 357
    throw p1

    .line 356
    :catch_1
    :goto_1
    invoke-static {p2}, Lcom/narvii/util/Utils;->safeClose(Ljava/io/OutputStream;)Z

    .line 359
    :goto_2
    invoke-static {}, Lcom/narvii/chat/ChannelFlagHelper;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "begin upload"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p1, p0, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;->this$1:Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;

    iget-object p1, p1, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog;->this$0:Lcom/narvii/chat/ChannelFlagHelper;

    iget-object p2, p1, Lcom/narvii/chat/ChannelFlagHelper;->screenShootFile:Ljava/io/File;

    new-instance p3, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3$1;

    invoke-direct {p3, p0}, Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3$1;-><init>(Lcom/narvii/chat/ChannelFlagHelper$MyFlagRequestDialog$3;)V

    invoke-static {p1, p2, p3}, Lcom/narvii/chat/ChannelFlagHelper;->access$1900(Lcom/narvii/chat/ChannelFlagHelper;Ljava/io/File;Lcom/narvii/util/Callback;)V

    return-void
.end method
