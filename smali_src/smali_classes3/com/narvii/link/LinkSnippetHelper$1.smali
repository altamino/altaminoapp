.class Lcom/narvii/link/LinkSnippetHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$1;->this$0:Lcom/narvii/link/LinkSnippetHelper;

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
    iget-object v0, p0, Lcom/narvii/link/LinkSnippetHelper$1;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/narvii/link/LinkSnippetHelper;->snippetListener:Lcom/narvii/link/LinkSnippetListener;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-interface {v0}, Lcom/narvii/link/LinkSnippetListener;->isFinished()Z

    .line 11
    move-result v0

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    return-void

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/narvii/link/LinkSnippetHelper$1;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 17
    .line 18
    iget-object v1, v0, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcom/narvii/link/LinkSnippetHelper;->a(Lcom/narvii/link/LinkSnippetHelper;)V

    .line 24
    return-void

    .line 25
    .line 26
    :cond_2
    const-string v0, "linkSnippet"

    .line 27
    .line 28
    const-string v1, "timeout"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/narvii/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    iget-object v0, p0, Lcom/narvii/link/LinkSnippetHelper$1;->this$0:Lcom/narvii/link/LinkSnippetHelper;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/narvii/link/LinkSnippetHelper;->linkSnippet:Lcom/narvii/link/snippet/LinkSnippet;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/narvii/link/snippet/LinkSnippet;->returnSnippetMediaImmediately()V

    .line 39
    return-void
.end method
