.class public Lcom/narvii/video/ui/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "AVChat"

.field public static final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    move-result-object v1

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    sput-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static getAvailableFileDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 5
    move-result-object v0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 11
    move-result v1

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 17
    move-result-object v0

    .line 18
    :cond_1
    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/narvii/video/ui/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AVChat"

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-boolean p0, Lcom/narvii/video/ui/Utils;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "AVChat"

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AVChat"

    .line 1
    invoke-static {v0, p0}, Lcom/narvii/video/ui/Utils;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/narvii/video/ui/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/narvii/video/ui/Utils;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    return-void
.end method
