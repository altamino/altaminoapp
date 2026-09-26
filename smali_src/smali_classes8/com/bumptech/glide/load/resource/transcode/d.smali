.class public Lcom/bumptech/glide/load/resource/transcode/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/e<",
        "Lcom/bumptech/glide/load/resource/gif/c;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/v;Lcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/engine/v;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/engine/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/v<",
            "Lcom/bumptech/glide/load/resource/gif/c;",
            ">;",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/engine/v<",
            "[B>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/v;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Lcom/bumptech/glide/load/resource/gif/c;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/gif/c;->c()Ljava/nio/ByteBuffer;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    new-instance p2, Lv0/b;

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Lcom/bumptech/glide/util/a;->d(Ljava/nio/ByteBuffer;)[B

    .line 16
    move-result-object p1

    .line 17
    .line 18
    .line 19
    invoke-direct {p2, p1}, Lv0/b;-><init>([B)V

    .line 20
    return-object p2
.end method
