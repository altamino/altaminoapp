.class public final Lcoil/fetch/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/fetch/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/fetch/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDrawableFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DrawableFetcher.kt\ncoil/fetch/DrawableFetcher\n+ 2 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 3 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,42:1\n45#2:43\n28#3:44\n*S KotlinDebug\n*F\n+ 1 DrawableFetcher.kt\ncoil/fetch/DrawableFetcher\n*L\n26#1:43\n26#1:44\n*E\n"
.end annotation


# instance fields
.field private final data:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final options:Lcoil/request/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lcoil/request/m;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/request/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcoil/fetch/f;->data:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/fetch/f;->options:Lcoil/request/m;

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lkotlin/coroutines/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcoil/fetch/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    .line 2
    iget-object p1, p0, Lcoil/fetch/f;->data:Landroid/graphics/drawable/Drawable;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcoil/util/i;->w(Landroid/graphics/drawable/Drawable;)Z

    .line 6
    move-result p1

    .line 7
    .line 8
    new-instance v0, Lcoil/fetch/g;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcoil/util/k;->INSTANCE:Lcoil/util/k;

    .line 13
    .line 14
    iget-object v2, p0, Lcoil/fetch/f;->data:Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    iget-object v3, p0, Lcoil/fetch/f;->options:Lcoil/request/m;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Lcoil/request/m;->f()Landroid/graphics/Bitmap$Config;

    .line 20
    move-result-object v3

    .line 21
    .line 22
    iget-object v4, p0, Lcoil/fetch/f;->options:Lcoil/request/m;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4}, Lcoil/request/m;->n()Lcoil/size/i;

    .line 26
    move-result-object v4

    .line 27
    .line 28
    iget-object v5, p0, Lcoil/fetch/f;->options:Lcoil/request/m;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Lcoil/request/m;->m()Lcoil/size/h;

    .line 32
    move-result-object v5

    .line 33
    .line 34
    iget-object v6, p0, Lcoil/fetch/f;->options:Lcoil/request/m;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Lcoil/request/m;->c()Z

    .line 38
    move-result v6

    .line 39
    .line 40
    .line 41
    invoke-virtual/range {v1 .. v6}, Lcoil/util/k;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;Lcoil/size/i;Lcoil/size/h;Z)Landroid/graphics/Bitmap;

    .line 42
    move-result-object v1

    .line 43
    .line 44
    iget-object v2, p0, Lcoil/fetch/f;->options:Lcoil/request/m;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcoil/request/m;->g()Landroid/content/Context;

    .line 48
    move-result-object v2

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v2

    .line 53
    .line 54
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 55
    .line 56
    .line 57
    invoke-direct {v3, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    iget-object v3, p0, Lcoil/fetch/f;->data:Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    :goto_0
    sget-object v1, Lcoil/decode/f;->MEMORY:Lcoil/decode/f;

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v3, p1, v1}, Lcoil/fetch/g;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/f;)V

    .line 66
    return-object v0
.end method
