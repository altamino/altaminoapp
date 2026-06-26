.class Lcom/narvii/link/snippet/LinkSnippet$1$1;
.super Ljava/lang/Object;
.source "LinkSnippet.java"

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

    .line 153
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet$1$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$1;

    iput-object p2, p0, Lcom/narvii/link/snippet/LinkSnippet$1$1;->val$tmp:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet$1$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$1;

    iget-object v0, v0, Lcom/narvii/link/snippet/LinkSnippet$1;->this$0:Lcom/narvii/link/snippet/LinkSnippet;

    iget-object v0, v0, Lcom/narvii/link/snippet/LinkSnippet;->nvContext:Lcom/narvii/app/NVContext;

    const-string/jumbo v1, "photo"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/photos/PhotoManager;

    .line 157
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet$1$1;->val$tmp:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/narvii/photos/PhotoManager;->getUri(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/narvii/model/Media;

    invoke-direct {v1}, Lcom/narvii/model/Media;-><init>()V

    const/16 v2, 0x64

    .line 159
    iput v2, v1, Lcom/narvii/model/Media;->type:I

    .line 160
    iput-object v0, v1, Lcom/narvii/model/Media;->url:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet$1$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$1;

    iget-object v0, v0, Lcom/narvii/link/snippet/LinkSnippet$1;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {v0, v1}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
