.class public final Lio/ktor/utils/io/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BUFFER_OBJECT_POOL_SIZE:I

.field private static final BUFFER_POOL_SIZE:I

.field private static final BUFFER_SIZE:I

.field private static final BufferObjectNoPool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Lio/ktor/utils/io/internal/g$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BufferObjectPool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Lio/ktor/utils/io/internal/g$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final BufferPool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    .line 2
    const-string v0, "BufferSize"

    .line 3
    .line 4
    const/16 v1, 0x1000

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/ktor/utils/io/internal/k;->a(Ljava/lang/String;I)I

    .line 8
    move-result v0

    .line 9
    .line 10
    sput v0, Lio/ktor/utils/io/internal/e;->BUFFER_SIZE:I

    .line 11
    .line 12
    const-string v1, "BufferPoolSize"

    .line 13
    .line 14
    const/16 v2, 0x800

    .line 15
    .line 16
    .line 17
    invoke-static {v1, v2}, Lio/ktor/utils/io/internal/k;->a(Ljava/lang/String;I)I

    .line 18
    move-result v1

    .line 19
    .line 20
    sput v1, Lio/ktor/utils/io/internal/e;->BUFFER_POOL_SIZE:I

    .line 21
    .line 22
    const-string v2, "BufferObjectPoolSize"

    .line 23
    .line 24
    const/16 v3, 0x400

    .line 25
    .line 26
    .line 27
    invoke-static {v2, v3}, Lio/ktor/utils/io/internal/k;->a(Ljava/lang/String;I)I

    .line 28
    move-result v2

    .line 29
    .line 30
    sput v2, Lio/ktor/utils/io/internal/e;->BUFFER_OBJECT_POOL_SIZE:I

    .line 31
    .line 32
    new-instance v3, Lt7/e;

    .line 33
    .line 34
    .line 35
    invoke-direct {v3, v1, v0}, Lt7/e;-><init>(II)V

    .line 36
    .line 37
    sput-object v3, Lio/ktor/utils/io/internal/e;->BufferPool:Lt7/g;

    .line 38
    .line 39
    new-instance v0, Lio/ktor/utils/io/internal/e$b;

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v2}, Lio/ktor/utils/io/internal/e$b;-><init>(I)V

    .line 43
    .line 44
    sput-object v0, Lio/ktor/utils/io/internal/e;->BufferObjectPool:Lt7/g;

    .line 45
    .line 46
    new-instance v0, Lio/ktor/utils/io/internal/e$a;

    .line 47
    .line 48
    .line 49
    invoke-direct {v0}, Lio/ktor/utils/io/internal/e$a;-><init>()V

    .line 50
    .line 51
    sput-object v0, Lio/ktor/utils/io/internal/e;->BufferObjectNoPool:Lt7/g;

    .line 52
    return-void
.end method

.method public static final a()I
    .locals 1

    .line 1
    sget v0, Lio/ktor/utils/io/internal/e;->BUFFER_SIZE:I

    return v0
.end method

.method public static final b()Lt7/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt7/g<",
            "Lio/ktor/utils/io/internal/g$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/e;->BufferObjectNoPool:Lt7/g;

    return-object v0
.end method

.method public static final c()Lt7/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt7/g<",
            "Lio/ktor/utils/io/internal/g$c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/e;->BufferObjectPool:Lt7/g;

    return-object v0
.end method

.method public static final d()Lt7/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt7/g<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/utils/io/internal/e;->BufferPool:Lt7/g;

    return-object v0
.end method
