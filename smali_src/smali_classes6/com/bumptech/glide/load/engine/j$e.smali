.class Lcom/bumptech/glide/load/engine/j$e;
.super Lcom/bumptech/glide/load/engine/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/j;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/bumptech/glide/load/a;)Z
    .locals 1

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/a;->REMOTE:Lcom/bumptech/glide/load/a;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public d(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
    .locals 0

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    sget-object p1, Lcom/bumptech/glide/load/a;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/a;

    .line 5
    .line 6
    if-eq p2, p1, :cond_1

    .line 7
    .line 8
    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/a;->LOCAL:Lcom/bumptech/glide/load/a;

    .line 9
    .line 10
    if-ne p2, p1, :cond_2

    .line 11
    .line 12
    :cond_1
    sget-object p1, Lcom/bumptech/glide/load/c;->TRANSFORMED:Lcom/bumptech/glide/load/c;

    .line 13
    .line 14
    if-ne p3, p1, :cond_2

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_2
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method
