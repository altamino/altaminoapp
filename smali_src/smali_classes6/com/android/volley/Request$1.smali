.class Lcom/android/volley/Request$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/Request;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/volley/Request;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/volley/Request$1;->val$tag:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/android/volley/Request$1;->val$threadId:J

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/android/volley/Request;->a(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/volley/Request$1;->val$tag:Ljava/lang/String;

    .line 9
    .line 10
    iget-wide v2, p0, Lcom/android/volley/Request$1;->val$threadId:J

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/VolleyLog$MarkerLog;->add(Ljava/lang/String;J)V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/volley/Request;->a(Lcom/android/volley/Request;)Lcom/android/volley/VolleyLog$MarkerLog;

    .line 19
    move-result-object v0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/volley/Request$1;->this$0:Lcom/android/volley/Request;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/android/volley/VolleyLog$MarkerLog;->finish(Ljava/lang/String;)V

    .line 29
    return-void
.end method
