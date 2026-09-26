.class public final Lcoil/fetch/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/fetch/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/fetch/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nByteBufferFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferFetcher.kt\ncoil/fetch/ByteBufferFetcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
.end annotation


# instance fields
.field private final data:Ljava/nio/ByteBuffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final options:Lcoil/request/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lcoil/request/m;)V
    .locals 0
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/fetch/c;->data:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/fetch/c;->options:Lcoil/request/m;

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/fetch/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v0, Lokio/Buffer;

    .line 4
    .line 5
    .line 6
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 7
    .line 8
    iget-object v1, p0, Lcoil/fetch/c;->data:Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lokio/Buffer;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    iget-object v1, p0, Lcoil/fetch/c;->data:Ljava/nio/ByteBuffer;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 17
    .line 18
    new-instance p1, Lcoil/fetch/m;

    .line 19
    .line 20
    iget-object v1, p0, Lcoil/fetch/c;->options:Lcoil/request/m;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcoil/request/m;->g()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1}, Lcoil/decode/q;->a(Lokio/BufferedSource;Landroid/content/Context;)Lcoil/decode/p;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    .line 31
    sget-object v2, Lcoil/decode/f;->MEMORY:Lcoil/decode/f;

    .line 32
    .line 33
    .line 34
    invoke-direct {p1, v0, v1, v2}, Lcoil/fetch/m;-><init>(Lcoil/decode/p;Ljava/lang/String;Lcoil/decode/f;)V

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    .line 38
    iget-object v1, p0, Lcoil/fetch/c;->data:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 42
    throw v0
.end method
