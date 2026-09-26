.class Lcom/narvii/link/snippet/LinkSnippet$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/link/LoadFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/link/snippet/LinkSnippet;->getBitmapByObject(Lcom/narvii/util/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/link/snippet/LinkSnippet;

.field final synthetic val$callback:Lcom/narvii/util/Callback;


# direct methods
.method constructor <init>(Lcom/narvii/link/snippet/LinkSnippet;Lcom/narvii/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/link/snippet/LinkSnippet$3;->this$0:Lcom/narvii/link/snippet/LinkSnippet;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/link/snippet/LinkSnippet$3;->val$callback:Lcom/narvii/util/Callback;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onLoadFinished()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/narvii/link/snippet/LinkSnippet$3$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/narvii/link/snippet/LinkSnippet$3$1;-><init>(Lcom/narvii/link/snippet/LinkSnippet$3;)V

    .line 6
    .line 7
    const-wide/16 v1, 0x20

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 11
    return-void
.end method
