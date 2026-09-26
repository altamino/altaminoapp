.class public Lcom/android/volley/VolleyLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/VolleyLog$MarkerLog;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field public static DEBUG:Z = false

.field public static TAG:Ljava/lang/String; = "Volley"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    const-string v0, "Volley"

    .line 3
    const/4 v1, 0x2

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v0

    .line 8
    .line 9
    sput-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 10
    .line 11
    const-class v0, Lcom/android/volley/VolleyLog;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    .line 17
    sput-object v0, Lcom/android/volley/VolleyLog;->CLASS_NAME:Ljava/lang/String;

    .line 18
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

.method private static varargs buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    .line 2
    if-nez p1, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    :goto_0
    new-instance p1, Ljava/lang/Throwable;

    .line 12
    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 18
    move-result-object p1

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x2

    .line 24
    move v1, v0

    .line 25
    :goto_1
    array-length v2, p1

    .line 26
    const/4 v3, 0x1

    .line 27
    .line 28
    if-ge v1, v2, :cond_2

    .line 29
    .line 30
    aget-object v2, p1, v1

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    .line 36
    sget-object v4, Lcom/android/volley/VolleyLog;->CLASS_NAME:Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v2

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    aget-object v2, p1, v1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    const/16 v4, 0x2e

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 54
    move-result v4

    .line 55
    add-int/2addr v4, v3

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    .line 61
    const/16 v4, 0x24

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    .line 65
    move-result v4

    .line 66
    add-int/2addr v4, v3

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v2, "."

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    aget-object p1, p1, v1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    goto :goto_2

    .line 98
    .line 99
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 100
    goto :goto_1

    .line 101
    .line 102
    :cond_2
    const-string p1, "<unknown>"

    .line 103
    .line 104
    :goto_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 105
    const/4 v2, 0x3

    .line 106
    .line 107
    new-array v2, v2, [Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 111
    move-result-object v4

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    .line 115
    move-result-wide v4

    .line 116
    .line 117
    .line 118
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    move-result-object v4

    .line 120
    const/4 v5, 0x0

    .line 121
    .line 122
    aput-object v4, v2, v5

    .line 123
    .line 124
    aput-object p1, v2, v3

    .line 125
    .line 126
    aput-object p0, v2, v0

    .line 127
    .line 128
    const-string p0, "[%d] %s: %s"

    .line 129
    .line 130
    .line 131
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    move-result-object p0

    .line 133
    return-object p0
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    .line 1
    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    .line 6
    aput-object p0, v0, v1

    .line 7
    .line 8
    const-string v1, "Changing log tag to %s"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    sput-object p0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x2

    .line 15
    .line 16
    .line 17
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 18
    move-result p0

    .line 19
    .line 20
    sput-boolean p0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 21
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    .line 2
    sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    .line 1
    invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;

    .line 2
    invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
