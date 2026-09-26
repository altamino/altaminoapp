.class public final Lcom/narvii/chat/util/ChatHelper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/util/ChatHelper;
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
    invoke-direct {p0}, Lcom/narvii/chat/util/ChatHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildBodyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "getBytes(...)"

    .line 3
    .line 4
    const-string v1, "forName(...)"

    .line 5
    .line 6
    const-string v2, "utf-8"

    .line 7
    .line 8
    const-string v3, "get(...)"

    .line 9
    .line 10
    const-string v4, "json"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    const-string v4, "token"

    .line 16
    .line 17
    .line 18
    invoke-static {p3, v4}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const/4 v4, 0x0

    .line 20
    .line 21
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    .line 22
    .line 23
    .line 24
    invoke-direct {v5, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 25
    .line 26
    .line 27
    :try_start_1
    invoke-static {p1, p3}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 28
    move-result-object p1

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 32
    move-result p3

    .line 33
    const/4 p4, 0x2

    .line 34
    .line 35
    if-ne p3, p4, :cond_0

    .line 36
    const/4 p3, 0x0

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object p3

    .line 41
    .line 42
    .line 43
    invoke-static {p3, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    check-cast p3, Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 49
    move-result-object p4

    .line 50
    .line 51
    .line 52
    invoke-static {p4, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 56
    move-result-object p3

    .line 57
    .line 58
    .line 59
    invoke-static {p3, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v5, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 63
    .line 64
    new-instance p3, Landroid/util/Base64OutputStream;

    .line 65
    .line 66
    const/16 p4, 0x12

    .line 67
    .line 68
    .line 69
    invoke-direct {p3, v5, p4}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 70
    .line 71
    new-instance p4, Ljava/io/FileInputStream;

    .line 72
    .line 73
    .line 74
    invoke-direct {p4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .line 76
    .line 77
    :try_start_2
    invoke-static {p4}, Lkotlin/io/b;->c(Ljava/io/InputStream;)[B

    .line 78
    move-result-object p2

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Landroid/util/Base64OutputStream;->close()V

    .line 85
    const/4 p2, 0x1

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object p1

    .line 90
    .line 91
    .line 92
    invoke-static {p1, v3}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    check-cast p1, Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 98
    move-result-object p2

    .line 99
    .line 100
    .line 101
    invoke-static {p2, v1}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 105
    move-result-object p1

    .line 106
    .line 107
    .line 108
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 118
    return-void

    .line 119
    :catchall_0
    move-exception p1

    .line 120
    move-object v4, p4

    .line 121
    goto :goto_0

    .line 122
    :catchall_1
    move-exception p1

    .line 123
    goto :goto_0

    .line 124
    .line 125
    :cond_0
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    .line 126
    .line 127
    .line 128
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 129
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    :catchall_2
    move-exception p1

    .line 131
    move-object v5, v4

    .line 132
    .line 133
    .line 134
    :goto_0
    invoke-static {v4}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 138
    .line 139
    .line 140
    invoke-static {v5}, Lkotlin/jvm/internal/t;->g(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 144
    throw p1
.end method

.method public final getMESSAGE_COMPARATOR()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/narvii/model/ChatMessage;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/chat/util/ChatHelper;->access$getMESSAGE_COMPARATOR$cp()Ljava/util/Comparator;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getNicknameColor(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "nickname"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result v0

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    const/4 p1, 0x0

    .line 13
    goto :goto_0

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result p1

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getNicknameColors()[I

    .line 21
    move-result-object v0

    .line 22
    array-length v0, v0

    .line 23
    rem-int/2addr p1, v0

    .line 24
    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 27
    move-result p1

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getNicknameColors()[I

    .line 31
    move-result-object v0

    .line 32
    .line 33
    aget p1, v0, p1

    .line 34
    return p1
.end method

.method public final getNicknameColors()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/chat/util/ChatHelper;->access$getNicknameColors$cp()[I

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getTHREAD_COMPARATOR()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/narvii/model/ChatThread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/narvii/chat/util/ChatHelper;->access$getTHREAD_COMPARATOR$cp()Ljava/util/Comparator;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;
    .locals 2
    .param p1    # Lcom/narvii/app/NVFragment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 7
    move-result v1

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 13
    move-result-object v1

    .line 14
    .line 15
    instance-of v1, v1, Lcom/narvii/chat/ThreadInfoHost;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 21
    move-result-object p1

    .line 22
    .line 23
    instance-of v1, p1, Lcom/narvii/chat/ThreadInfoHost;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    check-cast p1, Lcom/narvii/chat/ThreadInfoHost;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, v0

    .line 30
    .line 31
    :goto_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Lcom/narvii/chat/ThreadInfoHost;->getThread()Lcom/narvii/model/ChatThread;

    .line 35
    move-result-object v0

    .line 36
    :cond_1
    return-object v0

    .line 37
    .line 38
    :cond_2
    const-string v0, "thread"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    const-class v0, Lcom/narvii/model/ChatThread;

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    check-cast p1, Lcom/narvii/model/ChatThread;

    .line 51
    return-object p1

    .line 52
    :cond_3
    return-object v0
.end method
