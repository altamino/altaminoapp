.class public final Lcoil/size/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/size/j;


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/size/d;->context:Landroid/content/Context;

    .line 6
    return-void
.end method


# virtual methods
.method public b(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 1
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
    .line 2
    iget-object p1, p0, Lcoil/size/d;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 13
    .line 14
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 18
    move-result p1

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcoil/size/a;->a(I)Lcoil/size/c$a;

    .line 22
    move-result-object p1

    .line 23
    .line 24
    new-instance v0, Lcoil/size/i;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, p1, p1}, Lcoil/size/i;-><init>(Lcoil/size/c;Lcoil/size/c;)V

    .line 28
    return-object v0
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
    instance-of v1, p1, Lcoil/size/d;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcoil/size/d;->context:Landroid/content/Context;

    .line 11
    .line 12
    check-cast p1, Lcoil/size/d;

    .line 13
    .line 14
    iget-object p1, p1, Lcoil/size/d;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lcoil/size/d;->context:Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
