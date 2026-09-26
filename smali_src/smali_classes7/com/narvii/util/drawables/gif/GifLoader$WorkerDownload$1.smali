.class Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;->abort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;

.field final synthetic val$conn:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload$1;->this$1:Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload$1;->val$conn:Ljava/net/HttpURLConnection;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/narvii/util/drawables/gif/GifLoader$WorkerDownload$1;->val$conn:Ljava/net/HttpURLConnection;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    return-void
.end method
