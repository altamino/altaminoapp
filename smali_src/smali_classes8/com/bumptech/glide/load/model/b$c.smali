.class Lcom/bumptech/glide/load/model/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/d<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final converter:Lcom/bumptech/glide/load/model/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/b$b<",
            "TData;>;"
        }
    .end annotation
.end field

.field private final model:[B


# direct methods
.method constructor <init>([BLcom/bumptech/glide/load/model/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/bumptech/glide/load/model/b$b<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/model/b$c;->model:[B

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/model/b$c;->converter:Lcom/bumptech/glide/load/model/b$b;

    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/model/b$c;->converter:Lcom/bumptech/glide/load/model/b$b;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/load/model/b$b;->a()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/a;->LOCAL:Lcom/bumptech/glide/load/a;

    .line 3
    return-object v0
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d$a;)V
    .locals 1
    .param p1    # Lcom/bumptech/glide/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/data/d$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            "Lcom/bumptech/glide/load/data/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcom/bumptech/glide/load/model/b$c;->converter:Lcom/bumptech/glide/load/model/b$b;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/model/b$c;->model:[B

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/model/b$b;->b([B)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    .line 11
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d$a;->e(Ljava/lang/Object;)V

    .line 12
    return-void
.end method
