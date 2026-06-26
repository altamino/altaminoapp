.class Lcom/narvii/link/snippet/LinkSnippet$2;
.super Ljava/lang/Object;
.source "LinkSnippet.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/snippet/LinkSnippet;->getSnippetMedia(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/link/snippet/LinkSnippet;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/link/snippet/LinkSnippet;Lcom/narvii/util/Callback;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet$2;->this$0:Lcom/narvii/link/snippet/LinkSnippet;

    iput-object p2, p0, Lcom/narvii/link/snippet/LinkSnippet$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    .line 177
    iget-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet$2;->val$callback:Lcom/narvii/util/Callback;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 178
    invoke-interface {p1, v0}, Lcom/narvii/util/Callback;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/narvii/link/snippet/LinkSnippet$2;->this$0:Lcom/narvii/link/snippet/LinkSnippet;

    iget-object v1, p0, Lcom/narvii/link/snippet/LinkSnippet$2;->val$callback:Lcom/narvii/util/Callback;

    invoke-static {v0, p1, v1}, Lcom/narvii/link/snippet/LinkSnippet;->access$000(Lcom/narvii/link/snippet/LinkSnippet;Landroid/graphics/Bitmap;Lcom/narvii/util/Callback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 173
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/narvii/link/snippet/LinkSnippet$2;->call(Landroid/graphics/Bitmap;)V

    return-void
.end method
