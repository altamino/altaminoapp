.class final Lcom/bumptech/glide/load/engine/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/engine/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/i$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final dataSource:Lcom/bumptech/glide/load/a;

.field final synthetic this$0:Lcom/bumptech/glide/load/engine/h;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/h;Lcom/bumptech/glide/load/a;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/h$c;->this$0:Lcom/bumptech/glide/load/engine/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/h$c;->dataSource:Lcom/bumptech/glide/load/a;

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/v;
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/v<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/h$c;->this$0:Lcom/bumptech/glide/load/engine/h;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/h$c;->dataSource:Lcom/bumptech/glide/load/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/h;->x(Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/engine/v;)Lcom/bumptech/glide/load/engine/v;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
