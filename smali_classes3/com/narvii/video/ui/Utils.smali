.class public Lcom/narvii/video/ui/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "AVChat"

.field public static final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableFileDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-boolean v0, Lcom/narvii/video/ui/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AVChat"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    sget-boolean p0, Lcom/narvii/video/ui/Utils;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "AVChat"

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1

    const-string v0, "AVChat"

    .line 53
    invoke-static {v0, p0}, Lcom/narvii/video/ui/Utils;->logE(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 57
    sget-boolean v0, Lcom/narvii/video/ui/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/narvii/video/ui/Utils;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 26
    sget-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 31
    sget-object v0, Lcom/narvii/video/ui/Utils;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
