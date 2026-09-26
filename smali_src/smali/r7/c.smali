.class public final Lr7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field private static final DefaultChunkedBufferPool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "Ls7/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    .line 2
    new-instance v6, Lr7/l;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x7

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, v6

    .line 9
    .line 10
    .line 11
    invoke-direct/range {v0 .. v5}, Lr7/l;-><init>(IILp7/a;ILkotlin/jvm/internal/k;)V

    .line 12
    .line 13
    sput-object v6, Lr7/c;->DefaultChunkedBufferPool:Lt7/g;

    .line 14
    return-void
.end method

.method public static final a()Lt7/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt7/g<",
            "Ls7/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lr7/c;->DefaultChunkedBufferPool:Lt7/g;

    return-object v0
.end method
