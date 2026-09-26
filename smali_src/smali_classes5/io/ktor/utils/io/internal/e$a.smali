.class public final Lio/ktor/utils/io/internal/e$a;
.super Lt7/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt7/f<",
        "Lio/ktor/utils/io/internal/g$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lt7/f;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public d()Lio/ktor/utils/io/internal/g$c;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lio/ktor/utils/io/internal/g$c;

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lio/ktor/utils/io/internal/e;->a()I

    .line 6
    move-result v1

    .line 7
    .line 8
    .line 9
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    const-string v2, "allocateDirect(BUFFER_SIZE)"

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/t;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v4, v2, v3}, Lio/ktor/utils/io/internal/g$c;-><init>(Ljava/nio/ByteBuffer;IILkotlin/jvm/internal/k;)V

    .line 22
    return-object v0
.end method

.method public bridge synthetic s0()Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/e$a;->d()Lio/ktor/utils/io/internal/g$c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
