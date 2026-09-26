.class public final Lio/ktor/client/plugins/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DownloadProgressListenerAttributeKey:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Le8/q<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final UploadProgressListenerAttributeKey:Lio/ktor/util/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/util/a<",
            "Le8/q<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Lio/ktor/util/a;

    .line 3
    .line 4
    const-string v1, "UploadProgressListenerAttributeKey"

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    sput-object v0, Lio/ktor/client/plugins/b;->UploadProgressListenerAttributeKey:Lio/ktor/util/a;

    .line 10
    .line 11
    new-instance v0, Lio/ktor/util/a;

    .line 12
    .line 13
    const-string v1, "DownloadProgressListenerAttributeKey"

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1}, Lio/ktor/util/a;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    sput-object v0, Lio/ktor/client/plugins/b;->DownloadProgressListenerAttributeKey:Lio/ktor/util/a;

    .line 19
    return-void
.end method

.method public static final synthetic a()Lio/ktor/util/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/b;->DownloadProgressListenerAttributeKey:Lio/ktor/util/a;

    return-object v0
.end method

.method public static final synthetic b()Lio/ktor/util/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/b;->UploadProgressListenerAttributeKey:Lio/ktor/util/a;

    return-object v0
.end method

.method public static final c(Lio/ktor/client/statement/c;Le8/q;)Lio/ktor/client/statement/c;
    .locals 3
    .param p0    # Lio/ktor/client/statement/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Le8/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/statement/c;",
            "Le8/q<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/d<",
            "-",
            "Lw7/l0;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/ktor/client/statement/c;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "<this>"

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    const-string v0, "listener"

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lio/ktor/client/statement/c;->a()Lio/ktor/utils/io/g;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    .line 17
    invoke-interface {p0}, Lkotlinx/coroutines/o0;->getCoroutineContext()Lkotlin/coroutines/g;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lio/ktor/http/s;->b(Lio/ktor/http/q;)Ljava/lang/Long;

    .line 22
    move-result-object v2

    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1, v2, p1}, Lio/ktor/client/utils/a;->a(Lio/ktor/utils/io/g;Lkotlin/coroutines/g;Ljava/lang/Long;Le8/q;)Lio/ktor/utils/io/g;

    .line 26
    move-result-object p1

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lio/ktor/client/statement/c;->y0()Lio/ktor/client/call/b;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Lh7/b;->a(Lio/ktor/client/call/b;Lio/ktor/utils/io/g;)Lio/ktor/client/call/b;

    .line 34
    move-result-object p0

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lio/ktor/client/call/b;->f()Lio/ktor/client/statement/c;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method
