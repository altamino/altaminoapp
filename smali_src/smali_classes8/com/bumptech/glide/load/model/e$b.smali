.class final Lcom/bumptech/glide/load/model/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
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
.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field

.field private final dataUri:Ljava/lang/String;

.field private final reader:Lcom/bumptech/glide/load/model/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/e$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bumptech/glide/load/model/e$a<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/model/e$b;->dataUri:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/model/e$b;->reader:Lcom/bumptech/glide/load/model/e$a;

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
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$b;->reader:Lcom/bumptech/glide/load/model/e$a;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bumptech/glide/load/model/e$a;->a()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b()V
    .locals 2

    .line 1
    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$b;->reader:Lcom/bumptech/glide/load/model/e$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/model/e$b;->data:Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/model/e$a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
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
    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/model/e$b;->reader:Lcom/bumptech/glide/load/model/e$a;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/model/e$b;->dataUri:Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/model/e$a;->c(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    .line 10
    iput-object p1, p0, Lcom/bumptech/glide/load/model/e$b;->data:Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d$a;->e(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    .line 17
    .line 18
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d$a;->f(Ljava/lang/Exception;)V

    .line 19
    :goto_0
    return-void
.end method
