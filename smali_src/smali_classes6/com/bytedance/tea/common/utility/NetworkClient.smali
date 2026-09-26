.class public abstract Lcom/bytedance/tea/common/utility/NetworkClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/tea/common/utility/NetworkClient$a;
    }
.end annotation


# static fields
.field private static sDefault:Lcom/bytedance/tea/common/utility/NetworkClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/bytedance/tea/common/utility/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bytedance/tea/common/utility/b;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/tea/common/utility/NetworkClient;->sDefault:Lcom/bytedance/tea/common/utility/NetworkClient;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressWithgzip([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 4
    .line 5
    const/16 v2, 0x2000

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 9
    .line 10
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20
    .line 21
    .line 22
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 23
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception p0

    .line 28
    move-object v0, v2

    .line 29
    .line 30
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 34
    :cond_0
    throw p0
.end method

.method public static getDefault()Lcom/bytedance/tea/common/utility/NetworkClient;
    .locals 1

    sget-object v0, Lcom/bytedance/tea/common/utility/NetworkClient;->sDefault:Lcom/bytedance/tea/common/utility/NetworkClient;

    return-object v0
.end method

.method public static setDefault(Lcom/bytedance/tea/common/utility/NetworkClient;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/bytedance/tea/common/utility/NetworkClient;->sDefault:Lcom/bytedance/tea/common/utility/NetworkClient;

    if-eq p0, v0, :cond_0

    sput-object p0, Lcom/bytedance/tea/common/utility/NetworkClient;->sDefault:Lcom/bytedance/tea/common/utility/NetworkClient;

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/tea/common/utility/NetworkClient$a;

    invoke-direct {v0}, Lcom/bytedance/tea/common/utility/NetworkClient$a;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/tea/common/utility/NetworkClient$a;->a:Z

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, v1, v0}, Lcom/bytedance/tea/common/utility/NetworkClient;->get(Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract get(Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/tea/common/utility/NetworkClient$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public post(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/tea/common/utility/CommonHttpException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/tea/common/utility/NetworkClient$a;

    invoke-direct {v0}, Lcom/bytedance/tea/common/utility/NetworkClient$a;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/tea/common/utility/NetworkClient$a;->a:Z

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/bytedance/tea/common/utility/NetworkClient;->post(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract post(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/tea/common/utility/NetworkClient$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/tea/common/utility/CommonHttpException;
        }
    .end annotation
.end method

.method public abstract post(Ljava/lang/String;[BLjava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/tea/common/utility/NetworkClient$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/tea/common/utility/CommonHttpException;
        }
    .end annotation
.end method

.method public post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/tea/common/utility/CommonHttpException;
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_0

    .line 4
    :try_start_0
    invoke-static {p2}, Lcom/bytedance/tea/common/utility/NetworkClient;->compressWithgzip([B)[B

    move-result-object p2

    const-string p3, "Content-Encoding"

    const-string v1, "gzip"

    .line 5
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lcom/bytedance/tea/common/utility/CommonHttpException;

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/bytedance/tea/common/utility/CommonHttpException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 7
    :cond_0
    :goto_0
    invoke-static {p4}, Lcom/bytedance/tea/common/utility/d;->a(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "Content-Type"

    .line 8
    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    new-instance p3, Lcom/bytedance/tea/common/utility/NetworkClient$a;

    invoke-direct {p3}, Lcom/bytedance/tea/common/utility/NetworkClient$a;-><init>()V

    iput-boolean p5, p3, Lcom/bytedance/tea/common/utility/NetworkClient$a;->a:Z

    .line 10
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/bytedance/tea/common/utility/NetworkClient;->post(Ljava/lang/String;[BLjava/util/Map;Lcom/bytedance/tea/common/utility/NetworkClient$a;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
