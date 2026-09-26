.class public Lcom/bumptech/glide/load/model/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/o<",
        "Ljava/io/File;",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final opener:Lcom/bumptech/glide/load/model/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/f$d<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/model/f$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/f$d<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/model/f$a;->opener:Lcom/bumptech/glide/load/model/f$d;

    .line 6
    return-void
.end method


# virtual methods
.method public final b(Lcom/bumptech/glide/load/model/r;)Lcom/bumptech/glide/load/model/n;
    .locals 1
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
            "Ljava/io/File;",
            "TData;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/bumptech/glide/load/model/f;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/model/f$a;->opener:Lcom/bumptech/glide/load/model/f$d;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0}, Lcom/bumptech/glide/load/model/f;-><init>(Lcom/bumptech/glide/load/model/f$d;)V

    .line 8
    return-object p1
.end method
