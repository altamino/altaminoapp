.class public final Lcoil/fetch/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil/fetch/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/fetch/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBitmapFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BitmapFetcher.kt\ncoil/fetch/BitmapFetcher\n+ 2 Bitmaps.kt\ncoil/util/-Bitmaps\n+ 3 BitmapDrawable.kt\nandroidx/core/graphics/drawable/BitmapDrawableKt\n*L\n1#1,29:1\n45#2:30\n28#3:31\n*S KotlinDebug\n*F\n+ 1 BitmapFetcher.kt\ncoil/fetch/BitmapFetcher\n*L\n16#1:30\n16#1:31\n*E\n"
.end annotation


# instance fields
.field private final data:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final options:Lcoil/request/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcoil/request/m;)V
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
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
    iput-object p1, p0, Lcoil/fetch/b;->data:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    iput-object p2, p0, Lcoil/fetch/b;->options:Lcoil/request/m;

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 3
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
    new-instance p1, Lcoil/fetch/g;

    .line 3
    .line 4
    iget-object v0, p0, Lcoil/fetch/b;->data:Landroid/graphics/Bitmap;

    .line 5
    .line 6
    iget-object v1, p0, Lcoil/fetch/b;->options:Lcoil/request/m;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Lcoil/request/m;->g()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v1

    .line 15
    .line 16
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 20
    const/4 v0, 0x0

    .line 21
    .line 22
    sget-object v1, Lcoil/decode/f;->MEMORY:Lcoil/decode/f;

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, v2, v0, v1}, Lcoil/fetch/g;-><init>(Landroid/graphics/drawable/Drawable;ZLcoil/decode/f;)V

    .line 26
    return-object p1
.end method
