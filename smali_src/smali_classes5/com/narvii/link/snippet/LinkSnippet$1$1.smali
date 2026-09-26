.class Lcom/narvii/link/snippet/LinkSnippet$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/snippet/LinkSnippet$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/link/snippet/LinkSnippet$1;

.field final synthetic val$tmp:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/narvii/link/snippet/LinkSnippet$1;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet$1$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$1;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/link/snippet/LinkSnippet$1$1;->val$tmp:Ljava/io/File;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet$1$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$1;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/link/snippet/LinkSnippet$1;->this$0:Lcom/narvii/link/snippet/LinkSnippet;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    .line 7
    .line 8
    const-string v1, "photo"

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet$1$1;->val$tmp:Ljava/io/File;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    new-instance v1, Lcom/narvii/model/Media;

    .line 23
    .line 24
    .line 25
    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    .line 26
    .line 27
    const/16 v2, 0x64

    .line 28
    .line 29
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    .line 30
    .line 31
    iput-object v0, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet$1$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$1;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/link/snippet/LinkSnippet$1;->val$callback:Lcom/narvii/util/Callback;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method
