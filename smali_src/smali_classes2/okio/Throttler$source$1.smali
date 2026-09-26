.class public final Lokio/Throttler$source$1;
.super Lokio/ForwardingSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Throttler;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Throttler;


# direct methods
.method constructor <init>(Lokio/Source;Lokio/Throttler;)V
    .locals 0

    .line 1
    .line 2
    iput-object p2, p0, Lokio/Throttler$source$1;->this$0:Lokio/Throttler;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    .line 6
    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 1
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "sink"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/t;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lokio/Throttler$source$1;->this$0:Lokio/Throttler;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2, p3}, Lokio/Throttler;->take$okio(J)J

    .line 11
    move-result-wide p2

    .line 12
    .line 13
    .line 14
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    .line 15
    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return-wide p1

    .line 17
    .line 18
    .line 19
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 24
    .line 25
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 26
    .line 27
    const-string p2, "interrupted"

    .line 28
    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
.end method
