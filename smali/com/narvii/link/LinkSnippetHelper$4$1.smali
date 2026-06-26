.class Lcom/narvii/link/LinkSnippetHelper$4$1;
.super Ljava/lang/Object;
.source "LinkSnippetHelper.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/LinkSnippetHelper$4;->onPos(Lcom/narvii/util/crawler/SourceContent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/Media;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/link/LinkSnippetHelper$4;


# direct methods
.method constructor <init>(Lcom/narvii/link/LinkSnippetHelper$4;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/narvii/link/LinkSnippetHelper$4$1;->this$1:Lcom/narvii/link/LinkSnippetHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/Media;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/narvii/link/LinkSnippetHelper$4$1;->this$1:Lcom/narvii/link/LinkSnippetHelper$4;

    iget-object v0, v0, Lcom/narvii/link/LinkSnippetHelper$4;->val$snippetListener:Lcom/narvii/link/LinkSnippetListener;

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0, p1}, Lcom/narvii/link/LinkSnippetListener;->onFinish(Lcom/narvii/model/Media;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 249
    check-cast p1, Lcom/narvii/model/Media;

    invoke-virtual {p0, p1}, Lcom/narvii/link/LinkSnippetHelper$4$1;->call(Lcom/narvii/model/Media;)V

    return-void
.end method
