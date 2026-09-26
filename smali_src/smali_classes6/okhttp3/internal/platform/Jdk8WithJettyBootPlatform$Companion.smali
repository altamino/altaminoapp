.class public final Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildIfSupported()Lokhttp3/internal/platform/Platform;
    .locals 13
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    const-class v0, Ljavax/net/ssl/SSLSocket;

    .line 3
    .line 4
    const-string v1, "java.specification.version"

    .line 5
    .line 6
    const-string v2, "unknown"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    .line 13
    :try_start_0
    const-string v3, "jvmVersion"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 20
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    const/16 v3, 0x9

    .line 23
    .line 24
    if-lt v1, v3, :cond_0

    .line 25
    return-object v2

    .line 26
    .line 27
    :catch_0
    :cond_0
    :try_start_1
    const-string v1, "org.eclipse.jetty.alpn.ALPN"
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 28
    .line 29
    const-string v3, "org.eclipse.jetty.alpn.ALPN"

    .line 30
    const/4 v4, 0x1

    .line 31
    .line 32
    .line 33
    :try_start_2
    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    const-string v5, "$Provider"

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v5}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object v5

    .line 41
    .line 42
    .line 43
    invoke-static {v5, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 44
    move-result-object v5

    .line 45
    .line 46
    const-string v6, "$ClientProvider"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v6}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object v6

    .line 51
    .line 52
    .line 53
    invoke-static {v6, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 54
    move-result-object v11

    .line 55
    .line 56
    const-string v6, "$ServerProvider"

    .line 57
    .line 58
    .line 59
    invoke-static {v1, v6}, Lkotlin/jvm/internal/t;->s(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 64
    move-result-object v12

    .line 65
    .line 66
    const-string v1, "put"

    .line 67
    const/4 v6, 0x2

    .line 68
    .line 69
    new-array v6, v6, [Ljava/lang/Class;

    .line 70
    const/4 v7, 0x0

    .line 71
    .line 72
    aput-object v0, v6, v7

    .line 73
    .line 74
    aput-object v5, v6, v4

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 78
    move-result-object v8

    .line 79
    .line 80
    const-string v1, "get"

    .line 81
    .line 82
    new-array v5, v4, [Ljava/lang/Class;

    .line 83
    .line 84
    aput-object v0, v5, v7

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v1, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 88
    move-result-object v9

    .line 89
    .line 90
    const-string v1, "remove"

    .line 91
    .line 92
    new-array v4, v4, [Ljava/lang/Class;

    .line 93
    .line 94
    aput-object v0, v4, v7

    .line 95
    .line 96
    .line 97
    invoke-virtual {v3, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 98
    move-result-object v10

    .line 99
    .line 100
    new-instance v0, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;

    .line 101
    .line 102
    const-string v1, "putMethod"

    .line 103
    .line 104
    .line 105
    invoke-static {v8, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    const-string v1, "getMethod"

    .line 108
    .line 109
    .line 110
    invoke-static {v9, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    const-string v1, "removeMethod"

    .line 113
    .line 114
    .line 115
    invoke-static {v10, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    const-string v1, "clientProviderClass"

    .line 118
    .line 119
    .line 120
    invoke-static {v11, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    const-string v1, "serverProviderClass"

    .line 123
    .line 124
    .line 125
    invoke-static {v12, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    move-object v7, v0

    .line 127
    .line 128
    .line 129
    invoke-direct/range {v7 .. v12}, Lokhttp3/internal/platform/Jdk8WithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    return-object v0

    .line 131
    :catch_1
    return-object v2
.end method
