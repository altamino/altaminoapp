.class public final Lcoil/request/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil/request/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageRequest.kt\ncoil/request/ImageRequest$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1056:1\n1#2:1057\n*E\n"
.end annotation


# instance fields
.field private allowConversionToBitmap:Z

.field private allowHardware:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private allowRgb565:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bitmapConfig:Landroid/graphics/Bitmap$Config;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private colorSpace:Landroid/graphics/ColorSpace;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private data:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private decoderDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private decoderFactory:Lcoil/decode/i$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private defaults:Lcoil/request/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private diskCacheKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private diskCachePolicy:Lcoil/request/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private errorResId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fallbackResId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fetcherDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fetcherFactory:Lw7/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/u<",
            "+",
            "Lcoil/fetch/i$a<",
            "*>;+",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private headers:Lokhttp3/Headers$Builder;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private interceptorDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lifecycle:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private listener:Lcoil/request/h$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private memoryCacheKey:Lcoil/memory/MemoryCache$Key;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private memoryCachePolicy:Lcoil/request/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private networkCachePolicy:Lcoil/request/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private parameters:Lcoil/request/n$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private placeholderResId:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private precision:Lcoil/size/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private premultipliedAlpha:Z

.field private resolvedLifecycle:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resolvedScale:Lcoil/size/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resolvedSizeResolver:Lcoil/size/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private scale:Lcoil/size/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sizeResolver:Lcoil/size/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private target:Lf0/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transformationDispatcher:Lkotlinx/coroutines/k0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transformations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lg0/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transitionFactory:Lcoil/transition/c$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil/request/h$a;->context:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcoil/util/h;->b()Lcoil/request/b;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    const/4 p1, 0x0

    iput-object p1, p0, Lcoil/request/h$a;->data:Ljava/lang/Object;

    iput-object p1, p0, Lcoil/request/h$a;->target:Lf0/a;

    iput-object p1, p0, Lcoil/request/h$a;->listener:Lcoil/request/h$b;

    iput-object p1, p0, Lcoil/request/h$a;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    iput-object p1, p0, Lcoil/request/h$a;->diskCacheKey:Ljava/lang/String;

    iput-object p1, p0, Lcoil/request/h$a;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lcoil/request/h$a;->colorSpace:Landroid/graphics/ColorSpace;

    :cond_0
    iput-object p1, p0, Lcoil/request/h$a;->precision:Lcoil/size/e;

    iput-object p1, p0, Lcoil/request/h$a;->fetcherFactory:Lw7/u;

    iput-object p1, p0, Lcoil/request/h$a;->decoderFactory:Lcoil/decode/i$a;

    .line 4
    invoke-static {}, Lkotlin/collections/t;->m()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->transformations:Ljava/util/List;

    iput-object p1, p0, Lcoil/request/h$a;->transitionFactory:Lcoil/transition/c$a;

    iput-object p1, p0, Lcoil/request/h$a;->headers:Lokhttp3/Headers$Builder;

    iput-object p1, p0, Lcoil/request/h$a;->tags:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcoil/request/h$a;->allowConversionToBitmap:Z

    iput-object p1, p0, Lcoil/request/h$a;->allowHardware:Ljava/lang/Boolean;

    iput-object p1, p0, Lcoil/request/h$a;->allowRgb565:Ljava/lang/Boolean;

    iput-boolean v0, p0, Lcoil/request/h$a;->premultipliedAlpha:Z

    iput-object p1, p0, Lcoil/request/h$a;->memoryCachePolicy:Lcoil/request/a;

    iput-object p1, p0, Lcoil/request/h$a;->diskCachePolicy:Lcoil/request/a;

    iput-object p1, p0, Lcoil/request/h$a;->networkCachePolicy:Lcoil/request/a;

    iput-object p1, p0, Lcoil/request/h$a;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    iput-object p1, p0, Lcoil/request/h$a;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    iput-object p1, p0, Lcoil/request/h$a;->decoderDispatcher:Lkotlinx/coroutines/k0;

    iput-object p1, p0, Lcoil/request/h$a;->transformationDispatcher:Lkotlinx/coroutines/k0;

    iput-object p1, p0, Lcoil/request/h$a;->parameters:Lcoil/request/n$a;

    iput-object p1, p0, Lcoil/request/h$a;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    iput-object p1, p0, Lcoil/request/h$a;->placeholderResId:Ljava/lang/Integer;

    iput-object p1, p0, Lcoil/request/h$a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcoil/request/h$a;->errorResId:Ljava/lang/Integer;

    iput-object p1, p0, Lcoil/request/h$a;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcoil/request/h$a;->fallbackResId:Ljava/lang/Integer;

    iput-object p1, p0, Lcoil/request/h$a;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcoil/request/h$a;->lifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p1, p0, Lcoil/request/h$a;->sizeResolver:Lcoil/size/j;

    iput-object p1, p0, Lcoil/request/h$a;->scale:Lcoil/size/h;

    iput-object p1, p0, Lcoil/request/h$a;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p1, p0, Lcoil/request/h$a;->resolvedSizeResolver:Lcoil/size/j;

    iput-object p1, p0, Lcoil/request/h$a;->resolvedScale:Lcoil/size/h;

    return-void
.end method

.method public constructor <init>(Lcoil/request/h;)V
    .locals 2
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcoil/request/h$a;-><init>(Lcoil/request/h;Landroid/content/Context;ILkotlin/jvm/internal/k;)V

    return-void
.end method

.method public constructor <init>(Lcoil/request/h;Landroid/content/Context;)V
    .locals 2
    .param p1    # Lcoil/request/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcoil/request/h$a;->context:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Lcoil/request/h;->p()Lcoil/request/b;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 7
    invoke-virtual {p1}, Lcoil/request/h;->m()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->data:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcoil/request/h;->M()Lf0/a;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->target:Lf0/a;

    .line 9
    invoke-virtual {p1}, Lcoil/request/h;->A()Lcoil/request/h$b;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->listener:Lcoil/request/h$b;

    .line 10
    invoke-virtual {p1}, Lcoil/request/h;->B()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 11
    invoke-virtual {p1}, Lcoil/request/h;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->diskCacheKey:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->c()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcoil/request/h;->k()Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->colorSpace:Landroid/graphics/ColorSpace;

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->k()Lcoil/size/e;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->precision:Lcoil/size/e;

    .line 15
    invoke-virtual {p1}, Lcoil/request/h;->w()Lw7/u;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->fetcherFactory:Lw7/u;

    .line 16
    invoke-virtual {p1}, Lcoil/request/h;->o()Lcoil/decode/i$a;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->decoderFactory:Lcoil/decode/i$a;

    .line 17
    invoke-virtual {p1}, Lcoil/request/h;->O()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->transformations:Ljava/util/List;

    .line 18
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->o()Lcoil/transition/c$a;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->transitionFactory:Lcoil/transition/c$a;

    .line 19
    invoke-virtual {p1}, Lcoil/request/h;->x()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->headers:Lokhttp3/Headers$Builder;

    .line 20
    invoke-virtual {p1}, Lcoil/request/h;->L()Lcoil/request/q;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/q;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->tags:Ljava/util/Map;

    .line 21
    invoke-virtual {p1}, Lcoil/request/h;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcoil/request/h$a;->allowConversionToBitmap:Z

    .line 22
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->a()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->allowHardware:Ljava/lang/Boolean;

    .line 23
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->b()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->allowRgb565:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p1}, Lcoil/request/h;->I()Z

    move-result v0

    iput-boolean v0, p0, Lcoil/request/h$a;->premultipliedAlpha:Z

    .line 25
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->i()Lcoil/request/a;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->memoryCachePolicy:Lcoil/request/a;

    .line 26
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->e()Lcoil/request/a;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->diskCachePolicy:Lcoil/request/a;

    .line 27
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->j()Lcoil/request/a;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->networkCachePolicy:Lcoil/request/a;

    .line 28
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->g()Lkotlinx/coroutines/k0;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    .line 29
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->f()Lkotlinx/coroutines/k0;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    .line 30
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->d()Lkotlinx/coroutines/k0;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->decoderDispatcher:Lkotlinx/coroutines/k0;

    .line 31
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->n()Lkotlinx/coroutines/k0;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->transformationDispatcher:Lkotlinx/coroutines/k0;

    .line 32
    invoke-virtual {p1}, Lcoil/request/h;->E()Lcoil/request/n;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/n;->e()Lcoil/request/n$a;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->parameters:Lcoil/request/n$a;

    .line 33
    invoke-virtual {p1}, Lcoil/request/h;->G()Lcoil/memory/MemoryCache$Key;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 34
    invoke-static {p1}, Lcoil/request/h;->f(Lcoil/request/h;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->placeholderResId:Ljava/lang/Integer;

    .line 35
    invoke-static {p1}, Lcoil/request/h;->e(Lcoil/request/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-static {p1}, Lcoil/request/h;->b(Lcoil/request/h;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->errorResId:Ljava/lang/Integer;

    .line 37
    invoke-static {p1}, Lcoil/request/h;->a(Lcoil/request/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-static {p1}, Lcoil/request/h;->d(Lcoil/request/h;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->fallbackResId:Ljava/lang/Integer;

    .line 39
    invoke-static {p1}, Lcoil/request/h;->c(Lcoil/request/h;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->h()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 41
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->m()Lcoil/size/j;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->sizeResolver:Lcoil/size/j;

    .line 42
    invoke-virtual {p1}, Lcoil/request/h;->q()Lcoil/request/c;

    move-result-object v0

    invoke-virtual {v0}, Lcoil/request/c;->l()Lcoil/size/h;

    move-result-object v0

    iput-object v0, p0, Lcoil/request/h$a;->scale:Lcoil/size/h;

    .line 43
    invoke-virtual {p1}, Lcoil/request/h;->l()Landroid/content/Context;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 44
    invoke-virtual {p1}, Lcoil/request/h;->z()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iput-object p2, p0, Lcoil/request/h$a;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 45
    invoke-virtual {p1}, Lcoil/request/h;->K()Lcoil/size/j;

    move-result-object p2

    iput-object p2, p0, Lcoil/request/h$a;->resolvedSizeResolver:Lcoil/size/j;

    .line 46
    invoke-virtual {p1}, Lcoil/request/h;->J()Lcoil/size/h;

    move-result-object p1

    iput-object p1, p0, Lcoil/request/h$a;->resolvedScale:Lcoil/size/h;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcoil/request/h$a;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object p1, p0, Lcoil/request/h$a;->resolvedSizeResolver:Lcoil/size/j;

    iput-object p1, p0, Lcoil/request/h$a;->resolvedScale:Lcoil/size/h;

    :goto_0
    return-void
.end method

.method public synthetic constructor <init>(Lcoil/request/h;Landroid/content/Context;ILkotlin/jvm/internal/k;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 47
    invoke-virtual {p1}, Lcoil/request/h;->l()Landroid/content/Context;

    move-result-object p2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcoil/request/h$a;-><init>(Lcoil/request/h;Landroid/content/Context;)V

    return-void
.end method

.method private final e()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcoil/request/h$a;->resolvedScale:Lcoil/size/h;

    return-void
.end method

.method private final f()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lcoil/request/h$a;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    iput-object v0, p0, Lcoil/request/h$a;->resolvedSizeResolver:Lcoil/size/j;

    iput-object v0, p0, Lcoil/request/h$a;->resolvedScale:Lcoil/size/h;

    return-void
.end method

.method private final g()Landroidx/lifecycle/Lifecycle;
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/request/h$a;->target:Lf0/a;

    .line 3
    .line 4
    instance-of v1, v0, Lf0/b;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    check-cast v0, Lf0/b;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lf0/b;->getView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcoil/request/h$a;->context:Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-static {v0}, Lcoil/util/d;->c(Landroid/content/Context;)Landroidx/lifecycle/Lifecycle;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcoil/request/g;->INSTANCE:Lcoil/request/g;

    .line 28
    :cond_1
    return-object v0
.end method

.method private final h()Lcoil/size/h;
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/request/h$a;->sizeResolver:Lcoil/size/j;

    .line 3
    .line 4
    instance-of v1, v0, Lcoil/size/l;

    .line 5
    const/4 v2, 0x0

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcoil/size/l;

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v0, v2

    .line 12
    .line 13
    :goto_0
    if-eqz v0, :cond_2

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Lcoil/size/l;->getView()Landroid/view/View;

    .line 17
    move-result-object v0

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object v2, v0

    .line 22
    goto :goto_3

    .line 23
    .line 24
    :cond_2
    :goto_1
    iget-object v0, p0, Lcoil/request/h$a;->target:Lf0/a;

    .line 25
    .line 26
    instance-of v1, v0, Lf0/b;

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    check-cast v0, Lf0/b;

    .line 31
    goto :goto_2

    .line 32
    :cond_3
    move-object v0, v2

    .line 33
    .line 34
    :goto_2
    if-eqz v0, :cond_4

    .line 35
    .line 36
    .line 37
    invoke-interface {v0}, Lf0/b;->getView()Landroid/view/View;

    .line 38
    move-result-object v2

    .line 39
    .line 40
    :cond_4
    :goto_3
    instance-of v0, v2, Landroid/widget/ImageView;

    .line 41
    .line 42
    if-eqz v0, :cond_5

    .line 43
    .line 44
    check-cast v2, Landroid/widget/ImageView;

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcoil/util/i;->p(Landroid/widget/ImageView;)Lcoil/size/h;

    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    .line 51
    :cond_5
    sget-object v0, Lcoil/size/h;->FIT:Lcoil/size/h;

    .line 52
    return-object v0
.end method

.method private final i()Lcoil/size/j;
    .locals 4

    .line 1
    .line 2
    iget-object v0, p0, Lcoil/request/h$a;->target:Lf0/a;

    .line 3
    .line 4
    instance-of v1, v0, Lf0/b;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    check-cast v0, Lf0/b;

    .line 9
    .line 10
    .line 11
    invoke-interface {v0}, Lf0/b;->getView()Landroid/view/View;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    instance-of v1, v0, Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    move-object v1, v0

    .line 18
    .line 19
    check-cast v1, Landroid/widget/ImageView;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    .line 23
    move-result-object v1

    .line 24
    .line 25
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 26
    .line 27
    if-eq v1, v2, :cond_0

    .line 28
    .line 29
    sget-object v2, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 30
    .line 31
    if-ne v1, v2, :cond_1

    .line 32
    .line 33
    :cond_0
    sget-object v0, Lcoil/size/i;->ORIGINAL:Lcoil/size/i;

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcoil/size/k;->a(Lcoil/size/i;)Lcoil/size/j;

    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    const/4 v1, 0x2

    .line 40
    const/4 v2, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v3, v1, v2}, Lcoil/size/m;->b(Landroid/view/View;ZILjava/lang/Object;)Lcoil/size/l;

    .line 45
    move-result-object v0

    .line 46
    return-object v0

    .line 47
    .line 48
    :cond_2
    new-instance v0, Lcoil/size/d;

    .line 49
    .line 50
    iget-object v1, p0, Lcoil/request/h$a;->context:Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    invoke-direct {v0, v1}, Lcoil/size/d;-><init>(Landroid/content/Context;)V

    .line 54
    return-object v0
.end method


# virtual methods
.method public final a()Lcoil/request/h;
    .locals 72
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    move-object/from16 v0, p0

    .line 3
    .line 4
    iget-object v2, v0, Lcoil/request/h$a;->context:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v1, v0, Lcoil/request/h$a;->data:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcoil/request/j;->INSTANCE:Lcoil/request/j;

    .line 11
    :cond_0
    move-object v3, v1

    .line 12
    .line 13
    iget-object v4, v0, Lcoil/request/h$a;->target:Lf0/a;

    .line 14
    .line 15
    iget-object v5, v0, Lcoil/request/h$a;->listener:Lcoil/request/h$b;

    .line 16
    .line 17
    iget-object v6, v0, Lcoil/request/h$a;->memoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 18
    .line 19
    iget-object v7, v0, Lcoil/request/h$a;->diskCacheKey:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, v0, Lcoil/request/h$a;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcoil/request/b;->c()Landroid/graphics/Bitmap$Config;

    .line 29
    move-result-object v1

    .line 30
    :cond_1
    move-object v8, v1

    .line 31
    .line 32
    iget-object v9, v0, Lcoil/request/h$a;->colorSpace:Landroid/graphics/ColorSpace;

    .line 33
    .line 34
    iget-object v1, v0, Lcoil/request/h$a;->precision:Lcoil/size/e;

    .line 35
    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Lcoil/request/b;->m()Lcoil/size/e;

    .line 42
    move-result-object v1

    .line 43
    :cond_2
    move-object v10, v1

    .line 44
    .line 45
    iget-object v11, v0, Lcoil/request/h$a;->fetcherFactory:Lw7/u;

    .line 46
    .line 47
    iget-object v12, v0, Lcoil/request/h$a;->decoderFactory:Lcoil/decode/i$a;

    .line 48
    .line 49
    iget-object v13, v0, Lcoil/request/h$a;->transformations:Ljava/util/List;

    .line 50
    .line 51
    iget-object v1, v0, Lcoil/request/h$a;->transitionFactory:Lcoil/transition/c$a;

    .line 52
    .line 53
    if-nez v1, :cond_3

    .line 54
    .line 55
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Lcoil/request/b;->o()Lcoil/transition/c$a;

    .line 59
    move-result-object v1

    .line 60
    :cond_3
    move-object v14, v1

    .line 61
    .line 62
    iget-object v1, v0, Lcoil/request/h$a;->headers:Lokhttp3/Headers$Builder;

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    .line 68
    move-result-object v1

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    const/4 v1, 0x0

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-static {v1}, Lcoil/util/i;->z(Lokhttp3/Headers;)Lokhttp3/Headers;

    .line 74
    move-result-object v16

    .line 75
    .line 76
    iget-object v1, v0, Lcoil/request/h$a;->tags:Ljava/util/Map;

    .line 77
    .line 78
    if-eqz v1, :cond_5

    .line 79
    .line 80
    sget-object v15, Lcoil/request/q;->Companion:Lcoil/request/q$a;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v15, v1}, Lcoil/request/q$a;->a(Ljava/util/Map;)Lcoil/request/q;

    .line 84
    move-result-object v1

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    const/4 v1, 0x0

    .line 87
    .line 88
    .line 89
    :goto_1
    invoke-static {v1}, Lcoil/util/i;->y(Lcoil/request/q;)Lcoil/request/q;

    .line 90
    move-result-object v18

    .line 91
    .line 92
    iget-boolean v15, v0, Lcoil/request/h$a;->allowConversionToBitmap:Z

    .line 93
    .line 94
    iget-object v1, v0, Lcoil/request/h$a;->allowHardware:Ljava/lang/Boolean;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 100
    move-result v1

    .line 101
    .line 102
    :goto_2
    move/from16 v19, v1

    .line 103
    goto :goto_3

    .line 104
    .line 105
    :cond_6
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Lcoil/request/b;->a()Z

    .line 109
    move-result v1

    .line 110
    goto :goto_2

    .line 111
    .line 112
    :goto_3
    iget-object v1, v0, Lcoil/request/h$a;->allowRgb565:Ljava/lang/Boolean;

    .line 113
    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    move-result v1

    .line 119
    .line 120
    :goto_4
    move/from16 v20, v1

    .line 121
    goto :goto_5

    .line 122
    .line 123
    :cond_7
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Lcoil/request/b;->b()Z

    .line 127
    move-result v1

    .line 128
    goto :goto_4

    .line 129
    .line 130
    :goto_5
    iget-boolean v1, v0, Lcoil/request/h$a;->premultipliedAlpha:Z

    .line 131
    .line 132
    move/from16 v21, v1

    .line 133
    .line 134
    iget-object v1, v0, Lcoil/request/h$a;->memoryCachePolicy:Lcoil/request/a;

    .line 135
    .line 136
    if-nez v1, :cond_8

    .line 137
    .line 138
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1}, Lcoil/request/b;->j()Lcoil/request/a;

    .line 142
    move-result-object v1

    .line 143
    .line 144
    :cond_8
    move-object/from16 v22, v1

    .line 145
    .line 146
    iget-object v1, v0, Lcoil/request/h$a;->diskCachePolicy:Lcoil/request/a;

    .line 147
    .line 148
    if-nez v1, :cond_9

    .line 149
    .line 150
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Lcoil/request/b;->e()Lcoil/request/a;

    .line 154
    move-result-object v1

    .line 155
    .line 156
    :cond_9
    move-object/from16 v23, v1

    .line 157
    .line 158
    iget-object v1, v0, Lcoil/request/h$a;->networkCachePolicy:Lcoil/request/a;

    .line 159
    .line 160
    if-nez v1, :cond_a

    .line 161
    .line 162
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Lcoil/request/b;->k()Lcoil/request/a;

    .line 166
    move-result-object v1

    .line 167
    .line 168
    :cond_a
    move-object/from16 v24, v1

    .line 169
    .line 170
    iget-object v1, v0, Lcoil/request/h$a;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    .line 171
    .line 172
    if-nez v1, :cond_b

    .line 173
    .line 174
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Lcoil/request/b;->i()Lkotlinx/coroutines/k0;

    .line 178
    move-result-object v1

    .line 179
    .line 180
    :cond_b
    move-object/from16 v25, v1

    .line 181
    .line 182
    iget-object v1, v0, Lcoil/request/h$a;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    .line 183
    .line 184
    if-nez v1, :cond_c

    .line 185
    .line 186
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Lcoil/request/b;->h()Lkotlinx/coroutines/k0;

    .line 190
    move-result-object v1

    .line 191
    .line 192
    :cond_c
    move-object/from16 v26, v1

    .line 193
    .line 194
    iget-object v1, v0, Lcoil/request/h$a;->decoderDispatcher:Lkotlinx/coroutines/k0;

    .line 195
    .line 196
    if-nez v1, :cond_d

    .line 197
    .line 198
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1}, Lcoil/request/b;->d()Lkotlinx/coroutines/k0;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    :cond_d
    move-object/from16 v27, v1

    .line 205
    .line 206
    iget-object v1, v0, Lcoil/request/h$a;->transformationDispatcher:Lkotlinx/coroutines/k0;

    .line 207
    .line 208
    if-nez v1, :cond_e

    .line 209
    .line 210
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1}, Lcoil/request/b;->n()Lkotlinx/coroutines/k0;

    .line 214
    move-result-object v1

    .line 215
    .line 216
    :cond_e
    move-object/from16 v28, v1

    .line 217
    .line 218
    iget-object v1, v0, Lcoil/request/h$a;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 219
    .line 220
    if-nez v1, :cond_f

    .line 221
    .line 222
    iget-object v1, v0, Lcoil/request/h$a;->resolvedLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 223
    .line 224
    if-nez v1, :cond_f

    .line 225
    .line 226
    .line 227
    invoke-direct/range {p0 .. p0}, Lcoil/request/h$a;->g()Landroidx/lifecycle/Lifecycle;

    .line 228
    move-result-object v1

    .line 229
    .line 230
    :cond_f
    move-object/from16 v29, v1

    .line 231
    .line 232
    iget-object v1, v0, Lcoil/request/h$a;->sizeResolver:Lcoil/size/j;

    .line 233
    .line 234
    if-nez v1, :cond_10

    .line 235
    .line 236
    iget-object v1, v0, Lcoil/request/h$a;->resolvedSizeResolver:Lcoil/size/j;

    .line 237
    .line 238
    if-nez v1, :cond_10

    .line 239
    .line 240
    .line 241
    invoke-direct/range {p0 .. p0}, Lcoil/request/h$a;->i()Lcoil/size/j;

    .line 242
    move-result-object v1

    .line 243
    .line 244
    :cond_10
    move-object/from16 v30, v1

    .line 245
    .line 246
    iget-object v1, v0, Lcoil/request/h$a;->scale:Lcoil/size/h;

    .line 247
    .line 248
    if-nez v1, :cond_11

    .line 249
    .line 250
    iget-object v1, v0, Lcoil/request/h$a;->resolvedScale:Lcoil/size/h;

    .line 251
    .line 252
    if-nez v1, :cond_11

    .line 253
    .line 254
    .line 255
    invoke-direct/range {p0 .. p0}, Lcoil/request/h$a;->h()Lcoil/size/h;

    .line 256
    move-result-object v1

    .line 257
    .line 258
    :cond_11
    move-object/from16 v42, v1

    .line 259
    .line 260
    iget-object v1, v0, Lcoil/request/h$a;->parameters:Lcoil/request/n$a;

    .line 261
    .line 262
    if-eqz v1, :cond_12

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Lcoil/request/n$a;->a()Lcoil/request/n;

    .line 266
    move-result-object v1

    .line 267
    goto :goto_6

    .line 268
    :cond_12
    const/4 v1, 0x0

    .line 269
    .line 270
    .line 271
    :goto_6
    invoke-static {v1}, Lcoil/util/i;->x(Lcoil/request/n;)Lcoil/request/n;

    .line 272
    move-result-object v31

    .line 273
    .line 274
    iget-object v1, v0, Lcoil/request/h$a;->placeholderMemoryCacheKey:Lcoil/memory/MemoryCache$Key;

    .line 275
    .line 276
    move-object/from16 v32, v1

    .line 277
    .line 278
    iget-object v1, v0, Lcoil/request/h$a;->placeholderResId:Ljava/lang/Integer;

    .line 279
    .line 280
    move-object/from16 v33, v1

    .line 281
    .line 282
    iget-object v1, v0, Lcoil/request/h$a;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 283
    .line 284
    move-object/from16 v34, v1

    .line 285
    .line 286
    iget-object v1, v0, Lcoil/request/h$a;->errorResId:Ljava/lang/Integer;

    .line 287
    .line 288
    move-object/from16 v35, v1

    .line 289
    .line 290
    iget-object v1, v0, Lcoil/request/h$a;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 291
    .line 292
    move-object/from16 v36, v1

    .line 293
    .line 294
    iget-object v1, v0, Lcoil/request/h$a;->fallbackResId:Ljava/lang/Integer;

    .line 295
    .line 296
    move-object/from16 v37, v1

    .line 297
    .line 298
    iget-object v1, v0, Lcoil/request/h$a;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    .line 299
    .line 300
    move-object/from16 v38, v1

    .line 301
    .line 302
    new-instance v43, Lcoil/request/c;

    .line 303
    .line 304
    move-object/from16 v39, v43

    .line 305
    .line 306
    iget-object v1, v0, Lcoil/request/h$a;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 307
    .line 308
    move/from16 v17, v15

    .line 309
    .line 310
    iget-object v15, v0, Lcoil/request/h$a;->sizeResolver:Lcoil/size/j;

    .line 311
    .line 312
    move-object/from16 v59, v14

    .line 313
    .line 314
    iget-object v14, v0, Lcoil/request/h$a;->scale:Lcoil/size/h;

    .line 315
    .line 316
    move-object/from16 v60, v13

    .line 317
    .line 318
    iget-object v13, v0, Lcoil/request/h$a;->interceptorDispatcher:Lkotlinx/coroutines/k0;

    .line 319
    .line 320
    move-object/from16 v61, v12

    .line 321
    .line 322
    iget-object v12, v0, Lcoil/request/h$a;->fetcherDispatcher:Lkotlinx/coroutines/k0;

    .line 323
    .line 324
    move-object/from16 v62, v11

    .line 325
    .line 326
    iget-object v11, v0, Lcoil/request/h$a;->decoderDispatcher:Lkotlinx/coroutines/k0;

    .line 327
    .line 328
    move-object/from16 v63, v10

    .line 329
    .line 330
    iget-object v10, v0, Lcoil/request/h$a;->transformationDispatcher:Lkotlinx/coroutines/k0;

    .line 331
    .line 332
    move-object/from16 v64, v9

    .line 333
    .line 334
    iget-object v9, v0, Lcoil/request/h$a;->transitionFactory:Lcoil/transition/c$a;

    .line 335
    .line 336
    move-object/from16 v65, v8

    .line 337
    .line 338
    iget-object v8, v0, Lcoil/request/h$a;->precision:Lcoil/size/e;

    .line 339
    .line 340
    move-object/from16 v66, v7

    .line 341
    .line 342
    iget-object v7, v0, Lcoil/request/h$a;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 343
    .line 344
    move-object/from16 v67, v6

    .line 345
    .line 346
    iget-object v6, v0, Lcoil/request/h$a;->allowHardware:Ljava/lang/Boolean;

    .line 347
    .line 348
    move-object/from16 v68, v5

    .line 349
    .line 350
    iget-object v5, v0, Lcoil/request/h$a;->allowRgb565:Ljava/lang/Boolean;

    .line 351
    .line 352
    move-object/from16 v69, v4

    .line 353
    .line 354
    iget-object v4, v0, Lcoil/request/h$a;->memoryCachePolicy:Lcoil/request/a;

    .line 355
    .line 356
    move-object/from16 v70, v3

    .line 357
    .line 358
    iget-object v3, v0, Lcoil/request/h$a;->diskCachePolicy:Lcoil/request/a;

    .line 359
    .line 360
    move-object/from16 v71, v2

    .line 361
    .line 362
    iget-object v2, v0, Lcoil/request/h$a;->networkCachePolicy:Lcoil/request/a;

    .line 363
    .line 364
    move-object/from16 v44, v1

    .line 365
    .line 366
    move-object/from16 v45, v15

    .line 367
    .line 368
    move-object/from16 v46, v14

    .line 369
    .line 370
    move-object/from16 v47, v13

    .line 371
    .line 372
    move-object/from16 v48, v12

    .line 373
    .line 374
    move-object/from16 v49, v11

    .line 375
    .line 376
    move-object/from16 v50, v10

    .line 377
    .line 378
    move-object/from16 v51, v9

    .line 379
    .line 380
    move-object/from16 v52, v8

    .line 381
    .line 382
    move-object/from16 v53, v7

    .line 383
    .line 384
    move-object/from16 v54, v6

    .line 385
    .line 386
    move-object/from16 v55, v5

    .line 387
    .line 388
    move-object/from16 v56, v4

    .line 389
    .line 390
    move-object/from16 v57, v3

    .line 391
    .line 392
    move-object/from16 v58, v2

    .line 393
    .line 394
    .line 395
    invoke-direct/range {v43 .. v58}, Lcoil/request/c;-><init>(Landroidx/lifecycle/Lifecycle;Lcoil/size/j;Lcoil/size/h;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lcoil/transition/c$a;Lcoil/size/e;Landroid/graphics/Bitmap$Config;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcoil/request/a;Lcoil/request/a;Lcoil/request/a;)V

    .line 396
    .line 397
    iget-object v1, v0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 398
    .line 399
    move-object/from16 v40, v1

    .line 400
    .line 401
    const/16 v41, 0x0

    .line 402
    .line 403
    new-instance v43, Lcoil/request/h;

    .line 404
    .line 405
    move-object/from16 v1, v43

    .line 406
    .line 407
    move-object/from16 v2, v71

    .line 408
    .line 409
    move-object/from16 v3, v70

    .line 410
    .line 411
    move-object/from16 v4, v69

    .line 412
    .line 413
    move-object/from16 v5, v68

    .line 414
    .line 415
    move-object/from16 v6, v67

    .line 416
    .line 417
    move-object/from16 v7, v66

    .line 418
    .line 419
    move-object/from16 v8, v65

    .line 420
    .line 421
    move-object/from16 v9, v64

    .line 422
    .line 423
    move-object/from16 v10, v63

    .line 424
    .line 425
    move-object/from16 v11, v62

    .line 426
    .line 427
    move-object/from16 v12, v61

    .line 428
    .line 429
    move-object/from16 v13, v60

    .line 430
    .line 431
    move-object/from16 v14, v59

    .line 432
    .line 433
    move-object/from16 v15, v16

    .line 434
    .line 435
    move-object/from16 v16, v18

    .line 436
    .line 437
    move/from16 v18, v19

    .line 438
    .line 439
    move/from16 v19, v20

    .line 440
    .line 441
    move/from16 v20, v21

    .line 442
    .line 443
    move-object/from16 v21, v22

    .line 444
    .line 445
    move-object/from16 v22, v23

    .line 446
    .line 447
    move-object/from16 v23, v24

    .line 448
    .line 449
    move-object/from16 v24, v25

    .line 450
    .line 451
    move-object/from16 v25, v26

    .line 452
    .line 453
    move-object/from16 v26, v27

    .line 454
    .line 455
    move-object/from16 v27, v28

    .line 456
    .line 457
    move-object/from16 v28, v29

    .line 458
    .line 459
    move-object/from16 v29, v30

    .line 460
    .line 461
    move-object/from16 v30, v42

    .line 462
    .line 463
    .line 464
    invoke-direct/range {v1 .. v41}, Lcoil/request/h;-><init>(Landroid/content/Context;Ljava/lang/Object;Lf0/a;Lcoil/request/h$b;Lcoil/memory/MemoryCache$Key;Ljava/lang/String;Landroid/graphics/Bitmap$Config;Landroid/graphics/ColorSpace;Lcoil/size/e;Lw7/u;Lcoil/decode/i$a;Ljava/util/List;Lcoil/transition/c$a;Lokhttp3/Headers;Lcoil/request/q;ZZZZLcoil/request/a;Lcoil/request/a;Lcoil/request/a;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Lkotlinx/coroutines/k0;Landroidx/lifecycle/Lifecycle;Lcoil/size/j;Lcoil/size/h;Lcoil/request/n;Lcoil/memory/MemoryCache$Key;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Landroid/graphics/drawable/Drawable;Lcoil/request/c;Lcoil/request/b;Lkotlin/jvm/internal/k;)V

    .line 465
    return-object v43
.end method

.method public final b(Ljava/lang/Object;)Lcoil/request/h$a;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/request/h$a;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(Lcoil/request/b;)Lcoil/request/h$a;
    .locals 0
    .param p1    # Lcoil/request/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcoil/request/h$a;->defaults:Lcoil/request/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcoil/request/h$a;->e()V

    .line 6
    return-object p0
.end method

.method public final d(Lcoil/size/e;)Lcoil/request/h$a;
    .locals 0
    .param p1    # Lcoil/size/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/request/h$a;->precision:Lcoil/size/e;

    return-object p0
.end method

.method public final j(Lcoil/size/h;)Lcoil/request/h$a;
    .locals 0
    .param p1    # Lcoil/size/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcoil/request/h$a;->scale:Lcoil/size/h;

    return-object p0
.end method

.method public final k(Lcoil/size/j;)Lcoil/request/h$a;
    .locals 0
    .param p1    # Lcoil/size/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcoil/request/h$a;->sizeResolver:Lcoil/size/j;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcoil/request/h$a;->f()V

    .line 6
    return-object p0
.end method

.method public final l(Lf0/a;)Lcoil/request/h$a;
    .locals 0
    .param p1    # Lf0/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcoil/request/h$a;->target:Lf0/a;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcoil/request/h$a;->f()V

    .line 6
    return-object p0
.end method
