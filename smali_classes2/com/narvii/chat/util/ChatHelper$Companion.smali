.class public final Lcom/narvii/chat/util/ChatHelper$Companion;
.super Ljava/lang/Object;
.source "ChatHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/util/ChatHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChatHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatHelper.kt\ncom/narvii/chat/util/ChatHelper$Companion\n*L\n1#1,698:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/narvii/chat/util/ChatHelper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildBodyFile(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "(this as java.lang.String).getBytes(charset)"

    const-string v1, "Charset.forName(charsetName)"

    const-string/jumbo v2, "utf-8"

    const-string v3, "json"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "token"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 93
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 94
    :try_start_1
    invoke-static {p1, p3}, Lcom/narvii/util/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    const/4 p3, 0x0

    .line 98
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "splits[0]"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    if-eqz p3, :cond_1

    :try_start_2
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    new-instance p3, Landroid/util/Base64OutputStream;

    const/16 p4, 0x12

    invoke-direct {p3, v4, p4}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 100
    new-instance p4, Ljava/io/FileInputStream;

    invoke-direct {p4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    :try_start_3
    invoke-static {p4}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/util/Base64OutputStream;->write([B)V

    .line 102
    invoke-virtual {p3}, Landroid/util/Base64OutputStream;->close()V

    const/4 p2, 0x1

    .line 103
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "splits[1]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V

    .line 106
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    return-void

    .line 103
    :cond_0
    :try_start_4
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 98
    :cond_1
    :try_start_5
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    move-object p4, v3

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object p4, v3

    move-object v4, p4

    :goto_0
    if-eqz p4, :cond_4

    .line 105
    invoke-virtual {p4}, Ljava/io/FileInputStream;->close()V

    if-nez v4, :cond_3

    .line 106
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3

    :cond_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    throw p1

    .line 105
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v3
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

    .line 59
    invoke-static {}, Lcom/narvii/chat/util/ChatHelper;->access$getMESSAGE_COMPARATOR$cp()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final getNicknameColor(Ljava/lang/String;)I
    .locals 2

    const-string v0, "nickname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getNicknameColors()[I

    move-result-object v0

    array-length v0, v0

    rem-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 56
    :goto_1
    invoke-virtual {p0}, Lcom/narvii/chat/util/ChatHelper$Companion;->getNicknameColors()[I

    move-result-object p1

    aget p1, p1, v1

    return p1
.end method

.method public final getNicknameColors()[I
    .locals 1

    .line 52
    invoke-static {}, Lcom/narvii/chat/util/ChatHelper;->access$getNicknameColors$cp()[I

    move-result-object v0

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

    .line 66
    invoke-static {}, Lcom/narvii/chat/util/ChatHelper;->access$getTHREAD_COMPARATOR$cp()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final getThreadFromThreadInfoHost(Lcom/narvii/app/NVFragment;)Lcom/narvii/model/ChatThread;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 77
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/narvii/chat/ThreadInfoHost;

    if-eqz v1, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    instance-of v1, p1, Lcom/narvii/chat/ThreadInfoHost;

    if-nez v1, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, Lcom/narvii/chat/ThreadInfoHost;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/narvii/chat/ThreadInfoHost;->getThread()Lcom/narvii/model/ChatThread;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    const-string v0, "thread"

    .line 81
    invoke-virtual {p1, v0}, Lcom/narvii/app/NVFragment;->getStringParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 82
    const-class v0, Lcom/narvii/model/ChatThread;

    .line 81
    invoke-static {p1, v0}, Lcom/narvii/util/JacksonUtils;->readAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/model/ChatThread;

    return-object p1

    :cond_3
    return-object v0
.end method
