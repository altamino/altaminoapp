.class public final Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;
.super Lokhttp3/internal/ws/RealWebSocket$Streams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/RealConnection;->newWebSocketStreams$okhttp(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $exchange:Lokhttp3/internal/connection/Exchange;

.field final synthetic $sink:Lokio/BufferedSink;

.field final synthetic $source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokio/BufferedSource;Lokio/BufferedSink;Lokhttp3/internal/connection/Exchange;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->$source:Lokio/BufferedSource;

    .line 3
    .line 4
    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->$sink:Lokio/BufferedSink;

    .line 5
    .line 6
    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->$exchange:Lokhttp3/internal/connection/Exchange;

    .line 7
    const/4 p3, 0x1

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p3, p1, p2}, Lokhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLokio/BufferedSource;Lokio/BufferedSink;)V

    .line 11
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->$exchange:Lokhttp3/internal/connection/Exchange;

    .line 3
    .line 4
    const-wide/16 v1, -0x1

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x1

    .line 7
    const/4 v5, 0x0

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    .line 11
    return-void
.end method
