.class public Lu0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/n<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    move-result-object p1

    .line 8
    .line 9
    iput-object p1, p0, Lu0/d;->context:Landroid/content/Context;

    .line 10
    return-void
.end method

.method private e(Lcom/bumptech/glide/load/i;)Z
    .locals 4

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/f0;->TARGET_FRAME:Lcom/bumptech/glide/load/h;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/i;->c(Lcom/bumptech/glide/load/h;)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    check-cast p1, Ljava/lang/Long;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 14
    move-result-wide v0

    .line 15
    .line 16
    const-wide/16 v2, -0x1

    .line 17
    .line 18
    cmp-long p1, v0, v2

    .line 19
    .line 20
    if-nez p1, :cond_0

    .line 21
    const/4 p1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    return p1
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/model/n$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    check-cast p1, Landroid/net/Uri;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lu0/d;->c(Landroid/net/Uri;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/model/n$a;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    check-cast p1, Landroid/net/Uri;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lu0/d;->d(Landroid/net/Uri;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c(Landroid/net/Uri;IILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/model/n$a;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/model/n$a<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p2, p3}, Lt0/b;->d(II)Z

    .line 4
    move-result p2

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p4}, Lu0/d;->e(Lcom/bumptech/glide/load/i;)Z

    .line 10
    move-result p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    new-instance p2, Lcom/bumptech/glide/load/model/n$a;

    .line 15
    .line 16
    new-instance p3, Lz0/b;

    .line 17
    .line 18
    .line 19
    invoke-direct {p3, p1}, Lz0/b;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    iget-object p4, p0, Lu0/d;->context:Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    invoke-static {p4, p1}, Lt0/c;->g(Landroid/content/Context;Landroid/net/Uri;)Lt0/c;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p3, p1}, Lcom/bumptech/glide/load/model/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/data/d;)V

    .line 29
    return-object p2

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public d(Landroid/net/Uri;)Z
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p1}, Lt0/b;->c(Landroid/net/Uri;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
