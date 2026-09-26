.class abstract Lu0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/o<",
        "Landroid/net/Uri;",
        "TDataT;>;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TDataT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lu0/e$a;->context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p2, p0, Lu0/e$a;->dataClass:Ljava/lang/Class;

    .line 8
    return-void
.end method


# virtual methods
.method public final b(Lcom/bumptech/glide/load/model/r;)Lcom/bumptech/glide/load/model/n;
    .locals 5
    .param p1    # Lcom/bumptech/glide/load/model/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/r;",
            ")",
            "Lcom/bumptech/glide/load/model/n<",
            "Landroid/net/Uri;",
            "TDataT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lu0/e;

    .line 3
    .line 4
    iget-object v1, p0, Lu0/e$a;->context:Landroid/content/Context;

    .line 5
    .line 6
    const-class v2, Ljava/io/File;

    .line 7
    .line 8
    iget-object v3, p0, Lu0/e$a;->dataClass:Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v2, v3}, Lcom/bumptech/glide/load/model/r;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/n;

    .line 12
    move-result-object v2

    .line 13
    .line 14
    const-class v3, Landroid/net/Uri;

    .line 15
    .line 16
    iget-object v4, p0, Lu0/e$a;->dataClass:Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v3, v4}, Lcom/bumptech/glide/load/model/r;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/model/n;

    .line 20
    move-result-object p1

    .line 21
    .line 22
    iget-object v3, p0, Lu0/e$a;->dataClass:Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2, p1, v3}, Lu0/e;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/model/n;Lcom/bumptech/glide/load/model/n;Ljava/lang/Class;)V

    .line 26
    return-object v0
.end method
