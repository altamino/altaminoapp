.class public Lcom/bumptech/glide/load/model/s$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/o<",
        "Ljava/lang/Integer;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/model/s$d;->resources:Landroid/content/res/Resources;

    .line 6
    return-void
.end method


# virtual methods
.method public b(Lcom/bumptech/glide/load/model/r;)Lcom/bumptech/glide/load/model/n;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/r;",
            ")",
            "Lcom/bumptech/glide/load/model/n<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/bumptech/glide/load/model/s;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/model/s$d;->resources:Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/bumptech/glide/load/model/v;->c()Lcom/bumptech/glide/load/model/v;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/load/model/s;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/model/n;)V

    .line 12
    return-object p1
.end method
