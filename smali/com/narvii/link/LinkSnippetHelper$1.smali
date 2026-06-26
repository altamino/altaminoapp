.class Lcom/narvii/link/LinkSnippetHelper$1;
.super Ljava/lang/Object;
.source "LinkSnippetHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/link/LinkSnippetHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/link/LinkSnippetHelper;


# direct methods
.method constructor <init>(Lcom/narvii/link/LinkSnippetHelper;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$1;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/narvii/link/LinkSnippetHelper$1;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    iget-object v0, v0, Lcom/narvii/link/LinkSnippetHelper;->snippetListener:Lcom/narvii/link/LinkSnippetListener;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-interface {v0}, Lcom/narvii/link/LinkSnippetListener;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/narvii/link/LinkSnippetHelper$1;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    iget-object v1, v0, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    if-nez v1, :cond_2

    .line 64
    invoke-static {v0}, Lcom/narvii/link/LinkSnippetHelper;->access$000(Lcom/narvii/link/LinkSnippetHelper;)V

    return-void

    :cond_2
    const-string v0, "linkSnippet"

    const-string/jumbo v1, "timeout"

    .line 68
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/narvii/link/LinkSnippetHelper$1;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    iget-object v0, v0, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    invoke-virtual {v0}, Lcom/narvii/link/snippet/LinkSnippet;->returnSnippetMediaImmediately()V

    return-void
.end method
