.class public Lcom/bumptech/glide/load/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/model/b$d;,
        Lcom/bumptech/glide/load/model/b$a;,
        Lcom/bumptech/glide/load/model/b$c;,
        Lcom/bumptech/glide/load/model/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/n<",
        "[BTData;>;"
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


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    iput-object p1, p0, Lcom/bumptech/glide/load/model/b;->converter:Lcom/bumptech/glide/load/model/b$b;

    .line 6
    return-void
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

    .line 1
    .line 2
    check-cast p1, [B

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/model/b;->c([BIILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/model/n$a;

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
    check-cast p1, [B

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/model/b;->d([B)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public c([BIILcom/bumptech/glide/load/i;)Lcom/bumptech/glide/load/model/n$a;
    .locals 1
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/bumptech/glide/load/i;",
            ")",
            "Lcom/bumptech/glide/load/model/n$a<",
            "TData;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p2, Lcom/bumptech/glide/load/model/n$a;

    .line 3
    .line 4
    new-instance p3, Lz0/b;

    .line 5
    .line 6
    .line 7
    invoke-direct {p3, p1}, Lz0/b;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    new-instance p4, Lcom/bumptech/glide/load/model/b$c;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/load/model/b;->converter:Lcom/bumptech/glide/load/model/b$b;

    .line 12
    .line 13
    .line 14
    invoke-direct {p4, p1, v0}, Lcom/bumptech/glide/load/model/b$c;-><init>([BLcom/bumptech/glide/load/model/b$b;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/n$a;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/data/d;)V

    .line 18
    return-object p2
.end method

.method public d([B)Z
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    return p1
.end method
