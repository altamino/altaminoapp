.class public final Lio/ktor/util/cio/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1002

.field public static final DEFAULT_KTOR_POOL_SIZE:I = 0x800

.field private static final KtorDefaultPool:Lt7/g;
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
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lt7/b;

    .line 3
    .line 4
    const/16 v1, 0x800

    .line 5
    .line 6
    const/16 v2, 0x1002

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Lt7/b;-><init>(II)V

    .line 10
    .line 11
    sput-object v0, Lio/ktor/util/cio/a;->KtorDefaultPool:Lt7/g;

    .line 12
    return-void
.end method

.method public static final a()Lt7/g;
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
    sget-object v0, Lio/ktor/util/cio/a;->KtorDefaultPool:Lt7/g;

    return-object v0
.end method
