.class Lcom/bumptech/glide/load/engine/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/a$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/cache/a$b;"
    }
.end annotation


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final options:Lcom/bumptech/glide/load/i;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d<",
            "TDataType;>;TDataType;",
            "Lcom/bumptech/glide/load/i;",
            ")V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/e;->encoder:Lcom/bumptech/glide/load/d;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/e;->data:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/bumptech/glide/load/engine/e;->options:Lcom/bumptech/glide/load/i;

    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 3
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/e;->encoder:Lcom/bumptech/glide/load/d;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/e;->data:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/e;->options:Lcom/bumptech/glide/load/i;

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, p1, v2}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/i;)Z

    .line 10
    move-result p1

    .line 11
    return p1
.end method
