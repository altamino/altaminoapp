.class public Lcom/bumptech/glide/request/transition/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/transition/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/transition/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/transition/c<",
        "TR;>;"
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
.method public a(Lcom/bumptech/glide/load/a;Z)Lcom/bumptech/glide/request/transition/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a;",
            "Z)",
            "Lcom/bumptech/glide/request/transition/b<",
            "TR;>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object p1, Lcom/bumptech/glide/request/transition/a;->NO_ANIMATION:Lcom/bumptech/glide/request/transition/a;

    .line 3
    return-object p1
.end method
