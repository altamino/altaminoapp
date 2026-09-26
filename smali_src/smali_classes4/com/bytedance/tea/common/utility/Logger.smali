.class public Lcom/bytedance/tea/common/utility/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Logger"

.field static mLevel:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alertErrorInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 1
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static debug()Z
    .locals 2

    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 1
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static getLogLevel()I
    .locals 1

    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    return v0
.end method

.method private static getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    .line 2
    const/16 v0, 0x2e

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 6
    move-result v0

    .line 7
    .line 8
    if-gez v0, :cond_0

    .line 9
    return-object p0

    .line 10
    .line 11
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 1
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    sput p0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    return-void
.end method

.method public static st(Ljava/lang/String;I)V
    .locals 5

    .line 1
    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 6
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const/4 v2, 0x1

    .line 18
    move v3, v2

    .line 19
    :goto_0
    array-length v4, v0

    .line 20
    .line 21
    .line 22
    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    .line 23
    move-result v4

    .line 24
    .line 25
    if-ge v3, v4, :cond_1

    .line 26
    .line 27
    if-le v3, v2, :cond_0

    .line 28
    .line 29
    const-string v4, "\n"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    :cond_0
    aget-object v4, v0, v3

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 39
    .line 40
    .line 41
    invoke-static {v4}, Lcom/bytedance/tea/common/utility/Logger;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v4, "."

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    aget-object v4, v0, v3

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    add-int/lit8 v3, v3, 0x1

    .line 62
    goto :goto_0

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object p1

    .line 67
    .line 68
    .line 69
    invoke-static {p0, p1}, Lcom/bytedance/tea/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static throwException(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    .line 5
    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/tea/common/utility/Logger;->debug()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    return-void

    .line 14
    .line 15
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 16
    .line 17
    const-string v1, "Error! Now in debug, we alert to you to correct it !"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    throw v0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 1
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 1
    invoke-static {v0, p0}, Lcom/bytedance/tea/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/tea/common/utility/Logger;->mLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    .line 3
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
