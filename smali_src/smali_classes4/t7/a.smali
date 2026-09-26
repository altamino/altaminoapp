.class public final Lt7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ByteArrayPool:Lt7/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt7/g<",
            "[B>;"
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
    new-instance v0, Lt7/a$a;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lt7/a$a;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lt7/a;->ByteArrayPool:Lt7/g;

    .line 8
    return-void
.end method

.method public static final a()Lt7/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lt7/g<",
            "[B>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lt7/a;->ByteArrayPool:Lt7/g;

    return-object v0
.end method
