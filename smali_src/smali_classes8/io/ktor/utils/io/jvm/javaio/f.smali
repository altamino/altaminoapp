.class public final Lio/ktor/utils/io/jvm/javaio/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final parkingImplLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lio/ktor/utils/io/jvm/javaio/e<",
            "Ljava/lang/Thread;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lio/ktor/utils/io/jvm/javaio/f;->parkingImplLocal:Ljava/lang/ThreadLocal;

    .line 8
    return-void
.end method

.method public static final a()Lio/ktor/utils/io/jvm/javaio/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/ktor/utils/io/jvm/javaio/e<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/f;->parkingImplLocal:Ljava/lang/ThreadLocal;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    check-cast v0, Lio/ktor/utils/io/jvm/javaio/e;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lio/ktor/utils/io/jvm/javaio/c;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/c;

    .line 13
    :cond_0
    return-object v0
.end method

.method public static final b()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/ktor/utils/io/jvm/javaio/f;->a()Lio/ktor/utils/io/jvm/javaio/e;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    sget-object v1, Lio/ktor/utils/io/jvm/javaio/g;->INSTANCE:Lio/ktor/utils/io/jvm/javaio/g;

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
