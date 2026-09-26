.class public final Lcoil/size/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/size/j;


# instance fields
.field private final size:Lcoil/size/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcoil/size/i;)V
    .locals 0
    .param p1    # Lcoil/size/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/size/f;->size:Lcoil/size/i;

    .line 6
    return-void
.end method


# virtual methods
.method public b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/size/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lcoil/size/f;->size:Lcoil/size/i;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    .line 3
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    .line 6
    :cond_0
    instance-of v1, p1, Lcoil/size/f;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/size/f;->size:Lcoil/size/i;

    .line 11
    .line 12
    check-cast p1, Lcoil/size/f;

    .line 13
    .line 14
    iget-object p1, p1, Lcoil/size/f;->size:Lcoil/size/i;

    .line 15
    .line 16
    .line 17
    invoke-static {v1, p1}, Lkotlin/jvm/internal/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result p1

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/size/f;->size:Lcoil/size/i;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Lcoil/size/i;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
