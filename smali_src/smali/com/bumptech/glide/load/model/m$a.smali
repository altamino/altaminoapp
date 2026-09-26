.class Lcom/bumptech/glide/load/model/m$a;
.super Lcom/bumptech/glide/util/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/model/m;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/util/g<",
        "Lcom/bumptech/glide/load/model/m$b<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bumptech/glide/load/model/m;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/model/m;J)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/model/m$a;->this$0:Lcom/bumptech/glide/load/model/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/util/g;-><init>(J)V

    .line 6
    return-void
.end method


# virtual methods
.method protected bridge synthetic j(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Lcom/bumptech/glide/load/model/m$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/model/m$a;->n(Lcom/bumptech/glide/load/model/m$b;Ljava/lang/Object;)V

    .line 6
    return-void
.end method

.method protected n(Lcom/bumptech/glide/load/model/m$b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/model/m$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/m$b<",
            "TA;>;TB;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bumptech/glide/load/model/m$b;->c()V

    .line 4
    return-void
.end method
