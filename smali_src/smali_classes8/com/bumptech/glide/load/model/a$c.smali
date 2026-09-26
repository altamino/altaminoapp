.class public Lcom/bumptech/glide/load/model/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/o;
.implements Lcom/bumptech/glide/load/model/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/o<",
        "Landroid/net/Uri;",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/bumptech/glide/load/model/a$a<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/bumptech/glide/load/model/a$c;->assetManager:Landroid/content/res/AssetManager;

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/bumptech/glide/load/data/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/load/data/d<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/load/data/n;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/data/n;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 6
    return-object v0
.end method

.method public b(Lcom/bumptech/glide/load/model/r;)Lcom/bumptech/glide/load/model/n;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/r;",
            ")",
            "Lcom/bumptech/glide/load/model/n<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance p1, Lcom/bumptech/glide/load/model/a;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bumptech/glide/load/model/a$c;->assetManager:Landroid/content/res/AssetManager;

    .line 5
    .line 6
    .line 7
    invoke-direct {p1, v0, p0}, Lcom/bumptech/glide/load/model/a;-><init>(Landroid/content/res/AssetManager;Lcom/bumptech/glide/load/model/a$a;)V

    .line 8
    return-object p1
.end method
