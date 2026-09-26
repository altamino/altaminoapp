.class Lcom/bumptech/glide/load/engine/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/z;->j(Lcom/bumptech/glide/load/model/n$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/engine/z;

.field final synthetic val$toStart:Lcom/bumptech/glide/load/model/n$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/z;Lcom/bumptech/glide/load/model/n$a;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/z$a;->this$0:Lcom/bumptech/glide/load/engine/z;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/z$a;->val$toStart:Lcom/bumptech/glide/load/model/n$a;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z$a;->this$0:Lcom/bumptech/glide/load/engine/z;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z$a;->val$toStart:Lcom/bumptech/glide/load/model/n$a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/z;->g(Lcom/bumptech/glide/load/model/n$a;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z$a;->this$0:Lcom/bumptech/glide/load/engine/z;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z$a;->val$toStart:Lcom/bumptech/glide/load/model/n$a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/z;->h(Lcom/bumptech/glide/load/model/n$a;Ljava/lang/Object;)V

    .line 18
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z$a;->this$0:Lcom/bumptech/glide/load/engine/z;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z$a;->val$toStart:Lcom/bumptech/glide/load/model/n$a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/z;->g(Lcom/bumptech/glide/load/model/n$a;)Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/z$a;->this$0:Lcom/bumptech/glide/load/engine/z;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/z$a;->val$toStart:Lcom/bumptech/glide/load/model/n$a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/z;->i(Lcom/bumptech/glide/load/model/n$a;Ljava/lang/Exception;)V

    .line 18
    :cond_0
    return-void
.end method
