.class public final Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;
.super Lokhttp3/internal/concurrent/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->ping(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$execute$1\n+ 2 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection$ReaderRunnable\n*L\n1#1,218:1\n807#2,2:219\n*E\n"
.end annotation


# instance fields
.field final synthetic $cancelable:Z

.field final synthetic $name:Ljava/lang/String;

.field final synthetic $payload1$inlined:I

.field final synthetic $payload2$inlined:I

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLokhttp3/internal/http2/Http2Connection;II)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->$name:Ljava/lang/String;

    .line 3
    .line 4
    iput-boolean p2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->$cancelable:Z

    .line 5
    .line 6
    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 7
    .line 8
    iput p4, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->$payload1$inlined:I

    .line 9
    .line 10
    iput p5, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->$payload2$inlined:I

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;Z)V

    .line 14
    return-void
.end method


# virtual methods
.method public runOnce()J
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    .line 3
    .line 4
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->$payload1$inlined:I

    .line 5
    .line 6
    iget v2, p0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1;->$payload2$inlined:I

    .line 7
    const/4 v3, 0x1

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v3, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    return-wide v0
.end method
