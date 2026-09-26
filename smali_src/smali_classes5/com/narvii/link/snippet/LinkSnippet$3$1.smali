.class Lcom/narvii/link/snippet/LinkSnippet$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/snippet/LinkSnippet$3;->onLoadFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/link/snippet/LinkSnippet$3;


# direct methods
.method constructor <init>(Lcom/narvii/link/snippet/LinkSnippet$3;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet$3$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$3;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet$3$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$3;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/link/snippet/LinkSnippet$3;->this$0:Lcom/narvii/link/snippet/LinkSnippet;

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/narvii/link/snippet/LinkSnippet;->bitmapGot:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    .line 12
    iput-boolean v1, v0, Lcom/narvii/link/snippet/LinkSnippet;->bitmapGot:Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/narvii/link/snippet/LinkSnippet;->getViewBitmap()Landroid/graphics/Bitmap;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet$3$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$3;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/narvii/link/snippet/LinkSnippet$3;->val$callback:Lcom/narvii/util/Callback;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    .line 26
    :cond_1
    return-void
.end method
