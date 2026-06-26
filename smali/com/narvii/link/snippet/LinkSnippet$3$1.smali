.class Lcom/narvii/link/snippet/LinkSnippet$3$1;
.super Ljava/lang/Object;
.source "LinkSnippet.java"

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

    .line 207
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet$3$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet$3$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$3;

    iget-object v0, v0, Lcom/narvii/link/snippet/LinkSnippet$3;->this$0:Lcom/narvii/link/snippet/LinkSnippet;

    iget-boolean v1, v0, Lcom/narvii/link/snippet/LinkSnippet;->bitmapGot:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 213
    iput-boolean v1, v0, Lcom/narvii/link/snippet/LinkSnippet;->bitmapGot:Z

    .line 214
    invoke-virtual {v0}, Lcom/narvii/link/snippet/LinkSnippet;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet$3$1;->this$1:Lcom/narvii/link/snippet/LinkSnippet$3;

    iget-object v1, v1, Lcom/narvii/link/snippet/LinkSnippet$3;->val$callback:Lcom/narvii/util/Callback;

    if-eqz v1, :cond_1

    .line 216
    invoke-interface {v1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
