.class public Landroidx/renderscript/ScriptC;
.super Landroidx/renderscript/Script;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(JLandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/renderscript/Script;-><init>(JLandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method protected constructor <init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v1, p1}, Landroidx/renderscript/Script;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 3
    invoke-static {p1, p2, p3}, Landroidx/renderscript/ScriptC;->internalCreate(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/BaseObj;->setID(J)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptC script failed."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected constructor <init>(Landroidx/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .locals 4

    const-wide/16 v0, 0x0

    .line 6
    invoke-direct {p0, v0, v1, p1}, Landroidx/renderscript/Script;-><init>(JLandroidx/renderscript/RenderScript;)V

    .line 7
    sget v2, Landroidx/renderscript/RenderScript;->sPointerSize:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 8
    invoke-static {p1, p2, p3}, Landroidx/renderscript/ScriptC;->internalStringCreate(Landroidx/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1, p2, p4}, Landroidx/renderscript/ScriptC;->internalStringCreate(Landroidx/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide p1

    :goto_0
    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p0, p1, p2}, Landroidx/renderscript/BaseObj;->setID(J)V

    return-void

    .line 11
    :cond_1
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptC script failed."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized internalCreate(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .locals 8

    .line 1
    .line 2
    const-class v0, Landroidx/renderscript/ScriptC;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 7
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    const/16 v2, 0x400

    .line 10
    .line 11
    :try_start_1
    new-array v2, v2, [B

    .line 12
    const/4 v3, 0x0

    .line 13
    move v4, v3

    .line 14
    :goto_0
    array-length v5, v2

    .line 15
    sub-int/2addr v5, v4

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    array-length v5, v2

    .line 19
    .line 20
    mul-int/lit8 v5, v5, 0x2

    .line 21
    .line 22
    new-array v6, v5, [B

    .line 23
    array-length v7, v2

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    sub-int/2addr v5, v4

    .line 28
    move-object v2, v6

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_1
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 35
    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    if-gtz v5, :cond_1

    .line 38
    .line 39
    .line 40
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    .line 42
    .line 43
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    .line 48
    move-result-object p2

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 52
    move-result-object p2

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 56
    move-result-object p2

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1, p2, v2, v4}, Landroidx/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    .line 60
    move-result-wide p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    monitor-exit v0

    .line 62
    return-wide p0

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    goto :goto_3

    .line 65
    :cond_1
    add-int/2addr v4, v5

    .line 66
    goto :goto_0

    .line 67
    .line 68
    .line 69
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 70
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    .line 72
    :catch_0
    :try_start_5
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    .line 73
    .line 74
    .line 75
    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    .line 76
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 77
    :goto_3
    monitor-exit v0

    .line 78
    throw p0
.end method

.method private static declared-synchronized internalStringCreate(Landroidx/renderscript/RenderScript;Ljava/lang/String;[B)J
    .locals 3

    .line 1
    .line 2
    const-class v0, Landroidx/renderscript/ScriptC;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object v1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    array-length v2, p2

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, p2, v2}, Landroidx/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J

    .line 20
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit v0

    .line 22
    return-wide p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
.end method
