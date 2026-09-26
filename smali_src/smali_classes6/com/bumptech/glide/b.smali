.class public Lcom/bumptech/glide/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/b$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "image_manager_disk_cache"

.field private static final TAG:Ljava/lang/String; = "Glide"

.field private static volatile glide:Lcom/bumptech/glide/b;

.field private static volatile isInitializing:Z


# instance fields
.field private final arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

.field private bitmapPreFiller:Lcom/bumptech/glide/load/engine/prefill/b;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final connectivityMonitorFactory:Lcom/bumptech/glide/manager/d;

.field private final defaultRequestOptionsFactory:Lcom/bumptech/glide/b$a;

.field private final engine:Lcom/bumptech/glide/load/engine/k;

.field private final glideContext:Lcom/bumptech/glide/d;

.field private final managers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/j;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCache:Lcom/bumptech/glide/load/engine/cache/h;

.field private memoryCategory:Lcom/bumptech/glide/e;

.field private final registry:Lcom/bumptech/glide/h;

.field private final requestManagerRetriever:Lcom/bumptech/glide/manager/l;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/k;Lcom/bumptech/glide/load/engine/cache/h;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V
    .locals 23
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/engine/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/engine/cache/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/bumptech/glide/manager/l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/bumptech/glide/manager/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/bumptech/glide/b$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/engine/k;",
            "Lcom/bumptech/glide/load/engine/cache/h;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/d;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/b;",
            "Lcom/bumptech/glide/manager/l;",
            "Lcom/bumptech/glide/manager/d;",
            "I",
            "Lcom/bumptech/glide/b$a;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/k<",
            "**>;>;",
            "Ljava/util/List<",
            "Ly0/e<",
            "Ljava/lang/Object;",
            ">;>;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p4

    move-object/from16 v3, p5

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/bumptech/glide/b;->managers:Ljava/util/List;

    .line 3
    sget-object v4, Lcom/bumptech/glide/e;->NORMAL:Lcom/bumptech/glide/e;

    iput-object v4, v0, Lcom/bumptech/glide/b;->memoryCategory:Lcom/bumptech/glide/e;

    move-object/from16 v9, p2

    iput-object v9, v0, Lcom/bumptech/glide/b;->engine:Lcom/bumptech/glide/load/engine/k;

    iput-object v1, v0, Lcom/bumptech/glide/b;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    iput-object v3, v0, Lcom/bumptech/glide/b;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/bumptech/glide/b;->memoryCache:Lcom/bumptech/glide/load/engine/cache/h;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/bumptech/glide/b;->requestManagerRetriever:Lcom/bumptech/glide/manager/l;

    move-object/from16 v4, p7

    iput-object v4, v0, Lcom/bumptech/glide/b;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/d;

    move-object/from16 v6, p9

    iput-object v6, v0, Lcom/bumptech/glide/b;->defaultRequestOptionsFactory:Lcom/bumptech/glide/b$a;

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 5
    new-instance v5, Lcom/bumptech/glide/h;

    invoke-direct {v5}, Lcom/bumptech/glide/h;-><init>()V

    iput-object v5, v0, Lcom/bumptech/glide/b;->registry:Lcom/bumptech/glide/h;

    .line 6
    new-instance v7, Lcom/bumptech/glide/load/resource/bitmap/k;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/bitmap/k;-><init>()V

    invoke-virtual {v5, v7}, Lcom/bumptech/glide/h;->o(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/h;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_0

    .line 7
    new-instance v8, Lcom/bumptech/glide/load/resource/bitmap/s;

    invoke-direct {v8}, Lcom/bumptech/glide/load/resource/bitmap/s;-><init>()V

    invoke-virtual {v5, v8}, Lcom/bumptech/glide/h;->o(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/h;

    .line 8
    :cond_0
    invoke-virtual {v5}, Lcom/bumptech/glide/h;->g()Ljava/util/List;

    move-result-object v8

    .line 9
    new-instance v10, Lcom/bumptech/glide/load/resource/gif/a;

    invoke-direct {v10, v2, v8, v1, v3}, Lcom/bumptech/glide/load/resource/gif/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    .line 10
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/f0;->h(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/k;

    move-result-object v11

    .line 11
    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/p;

    .line 12
    invoke-virtual {v5}, Lcom/bumptech/glide/h;->g()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-direct {v12, v13, v14, v1, v3}, Lcom/bumptech/glide/load/resource/bitmap/p;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    if-eqz p13, :cond_1

    const/16 v13, 0x1c

    if-lt v7, v13, :cond_1

    .line 13
    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/w;

    invoke-direct {v13}, Lcom/bumptech/glide/load/resource/bitmap/w;-><init>()V

    .line 14
    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v14}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>()V

    goto :goto_0

    .line 15
    :cond_1
    new-instance v14, Lcom/bumptech/glide/load/resource/bitmap/h;

    invoke-direct {v14, v12}, Lcom/bumptech/glide/load/resource/bitmap/h;-><init>(Lcom/bumptech/glide/load/resource/bitmap/p;)V

    .line 16
    new-instance v13, Lcom/bumptech/glide/load/resource/bitmap/b0;

    invoke-direct {v13, v12, v3}, Lcom/bumptech/glide/load/resource/bitmap/b0;-><init>(Lcom/bumptech/glide/load/resource/bitmap/p;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    .line 17
    :goto_0
    new-instance v15, Lcom/bumptech/glide/load/resource/drawable/d;

    invoke-direct {v15, v2}, Lcom/bumptech/glide/load/resource/drawable/d;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v6, Lcom/bumptech/glide/load/model/s$c;

    invoke-direct {v6, v4}, Lcom/bumptech/glide/load/model/s$c;-><init>(Landroid/content/res/Resources;)V

    .line 19
    new-instance v9, Lcom/bumptech/glide/load/model/s$d;

    invoke-direct {v9, v4}, Lcom/bumptech/glide/load/model/s$d;-><init>(Landroid/content/res/Resources;)V

    .line 20
    new-instance v0, Lcom/bumptech/glide/load/model/s$b;

    invoke-direct {v0, v4}, Lcom/bumptech/glide/load/model/s$b;-><init>(Landroid/content/res/Resources;)V

    move/from16 p3, v7

    .line 21
    new-instance v7, Lcom/bumptech/glide/load/model/s$a;

    invoke-direct {v7, v4}, Lcom/bumptech/glide/load/model/s$a;-><init>(Landroid/content/res/Resources;)V

    .line 22
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/c;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    move-object/from16 p6, v7

    .line 23
    new-instance v7, Lcom/bumptech/glide/load/resource/transcode/a;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/transcode/a;-><init>()V

    move-object/from16 p7, v7

    .line 24
    new-instance v7, Lcom/bumptech/glide/load/resource/transcode/d;

    invoke-direct {v7}, Lcom/bumptech/glide/load/resource/transcode/d;-><init>()V

    move-object/from16 p13, v7

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v16, v7

    .line 26
    new-instance v7, Lcom/bumptech/glide/load/model/c;

    invoke-direct {v7}, Lcom/bumptech/glide/load/model/c;-><init>()V

    move-object/from16 v17, v9

    const-class v9, Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {v5, v9, v7}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    move-result-object v7

    move-object/from16 v18, v0

    new-instance v0, Lcom/bumptech/glide/load/model/t;

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/model/t;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    move-object/from16 v19, v6

    const-class v6, Ljava/io/InputStream;

    .line 28
    invoke-virtual {v7, v6, v0}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/h;

    move-result-object v0

    const-string v7, "Bitmap"

    move-object/from16 v20, v15

    const-class v15, Landroid/graphics/Bitmap;

    .line 29
    invoke-virtual {v0, v7, v9, v15, v14}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v7, v6, v15, v13}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    .line 31
    invoke-static {}, Lcom/bumptech/glide/load/data/m;->c()Z

    move-result v0

    const-class v3, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    .line 32
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/y;

    invoke-direct {v0, v12}, Lcom/bumptech/glide/load/resource/bitmap/y;-><init>(Lcom/bumptech/glide/load/resource/bitmap/p;)V

    invoke-virtual {v5, v7, v3, v15, v0}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    .line 33
    :cond_2
    invoke-virtual {v5, v7, v3, v15, v11}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 34
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/f0;->c(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/k;

    move-result-object v12

    move-object/from16 v21, v5

    const-class v5, Landroid/content/res/AssetFileDescriptor;

    .line 35
    invoke-virtual {v0, v7, v5, v15, v12}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/bumptech/glide/load/model/v$a;->a()Lcom/bumptech/glide/load/model/v$a;

    move-result-object v12

    invoke-virtual {v0, v15, v15, v12}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/d0;

    invoke-direct {v12}, Lcom/bumptech/glide/load/resource/bitmap/d0;-><init>()V

    .line 37
    invoke-virtual {v0, v7, v15, v15, v12}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v15, v2}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v12, v4, v14}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;)V

    const-string v14, "BitmapDrawable"

    move-object/from16 v22, v5

    const-class v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 39
    invoke-virtual {v0, v14, v9, v5, v12}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v12, v4, v13}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;)V

    .line 40
    invoke-virtual {v0, v14, v6, v5, v12}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v12, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v12, v4, v11}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;)V

    .line 41
    invoke-virtual {v0, v14, v3, v5, v12}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v11, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v11, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/l;)V

    .line 42
    invoke-virtual {v0, v5, v11}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/load/resource/gif/j;

    move-object v11, v3

    move-object/from16 v3, p5

    invoke-direct {v2, v8, v10, v3}, Lcom/bumptech/glide/load/resource/gif/j;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/k;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    const-string v8, "Gif"

    const-class v12, Lcom/bumptech/glide/load/resource/gif/c;

    .line 43
    invoke-virtual {v0, v8, v6, v12, v2}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 44
    invoke-virtual {v0, v8, v9, v12, v10}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/load/resource/gif/d;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/gif/d;-><init>()V

    .line 45
    invoke-virtual {v0, v12, v2}, Lcom/bumptech/glide/h;->b(Ljava/lang/Class;Lcom/bumptech/glide/load/l;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/bumptech/glide/load/model/v$a;->a()Lcom/bumptech/glide/load/model/v$a;

    move-result-object v2

    const-class v8, Lcom/bumptech/glide/gifdecoder/a;

    .line 47
    invoke-virtual {v0, v8, v8, v2}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/load/resource/gif/h;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/resource/gif/h;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)V

    .line 48
    invoke-virtual {v0, v7, v8, v15, v2}, Lcom/bumptech/glide/h;->e(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    const-class v2, Landroid/net/Uri;

    const-class v7, Landroid/graphics/drawable/Drawable;

    move-object/from16 v8, v20

    .line 49
    invoke-virtual {v0, v2, v7, v8}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v10, Lcom/bumptech/glide/load/resource/bitmap/a0;

    invoke-direct {v10, v8, v1}, Lcom/bumptech/glide/load/resource/bitmap/a0;-><init>(Lcom/bumptech/glide/load/resource/drawable/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)V

    .line 50
    invoke-virtual {v0, v2, v15, v10}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v8, Lv0/a$a;

    invoke-direct {v8}, Lv0/a$a;-><init>()V

    .line 51
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/h;->p(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v8, Lcom/bumptech/glide/load/model/d$b;

    invoke-direct {v8}, Lcom/bumptech/glide/load/model/d$b;-><init>()V

    const-class v10, Ljava/io/File;

    .line 52
    invoke-virtual {v0, v10, v9, v8}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v8, Lcom/bumptech/glide/load/model/f$e;

    invoke-direct {v8}, Lcom/bumptech/glide/load/model/f$e;-><init>()V

    .line 53
    invoke-virtual {v0, v10, v6, v8}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v8, Lw0/a;

    invoke-direct {v8}, Lw0/a;-><init>()V

    .line 54
    invoke-virtual {v0, v10, v10, v8}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v8, Lcom/bumptech/glide/load/model/f$b;

    invoke-direct {v8}, Lcom/bumptech/glide/load/model/f$b;-><init>()V

    .line 55
    invoke-virtual {v0, v10, v11, v8}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/bumptech/glide/load/model/v$a;->a()Lcom/bumptech/glide/load/model/v$a;

    move-result-object v8

    invoke-virtual {v0, v10, v10, v8}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v8, Lcom/bumptech/glide/load/data/k$a;

    invoke-direct {v8, v3}, Lcom/bumptech/glide/load/data/k$a;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/b;)V

    .line 57
    invoke-virtual {v0, v8}, Lcom/bumptech/glide/h;->p(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/h;

    .line 58
    invoke-static {}, Lcom/bumptech/glide/load/data/m;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    new-instance v0, Lcom/bumptech/glide/load/data/m$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/data/m$a;-><init>()V

    move-object/from16 v8, v21

    invoke-virtual {v8, v0}, Lcom/bumptech/glide/h;->p(Lcom/bumptech/glide/load/data/e$a;)Lcom/bumptech/glide/h;

    goto :goto_1

    :cond_3
    move-object/from16 v8, v21

    :goto_1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v13, v19

    .line 60
    invoke-virtual {v8, v0, v6, v13}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v14

    move-object/from16 v3, v18

    .line 61
    invoke-virtual {v14, v0, v11, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v14

    move-object/from16 v18, v12

    const-class v12, Ljava/lang/Integer;

    .line 62
    invoke-virtual {v14, v12, v6, v13}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v13

    .line 63
    invoke-virtual {v13, v12, v11, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v3

    move-object/from16 v13, v17

    .line 64
    invoke-virtual {v3, v12, v2, v13}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v3

    move-object/from16 v14, p6

    move-object/from16 v1, v22

    .line 65
    invoke-virtual {v3, v0, v1, v14}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v3

    .line 66
    invoke-virtual {v3, v12, v1, v14}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v3

    .line 67
    invoke-virtual {v3, v0, v2, v13}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v3, Lcom/bumptech/glide/load/model/e$c;

    invoke-direct {v3}, Lcom/bumptech/glide/load/model/e$c;-><init>()V

    const-class v12, Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v12, v6, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v3, Lcom/bumptech/glide/load/model/e$c;

    invoke-direct {v3}, Lcom/bumptech/glide/load/model/e$c;-><init>()V

    .line 69
    invoke-virtual {v0, v2, v6, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v3, Lcom/bumptech/glide/load/model/u$c;

    invoke-direct {v3}, Lcom/bumptech/glide/load/model/u$c;-><init>()V

    .line 70
    invoke-virtual {v0, v12, v6, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v3, Lcom/bumptech/glide/load/model/u$b;

    invoke-direct {v3}, Lcom/bumptech/glide/load/model/u$b;-><init>()V

    .line 71
    invoke-virtual {v0, v12, v11, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v3, Lcom/bumptech/glide/load/model/u$a;

    invoke-direct {v3}, Lcom/bumptech/glide/load/model/u$a;-><init>()V

    .line 72
    invoke-virtual {v0, v12, v1, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v3, Lu0/b$a;

    invoke-direct {v3}, Lu0/b$a;-><init>()V

    .line 73
    invoke-virtual {v0, v2, v6, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v3, Lcom/bumptech/glide/load/model/a$c;

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-direct {v3, v12}, Lcom/bumptech/glide/load/model/a$c;-><init>(Landroid/content/res/AssetManager;)V

    invoke-virtual {v0, v2, v6, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v3, Lcom/bumptech/glide/load/model/a$b;

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-direct {v3, v12}, Lcom/bumptech/glide/load/model/a$b;-><init>(Landroid/content/res/AssetManager;)V

    .line 76
    invoke-virtual {v0, v2, v11, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v3, Lu0/c$a;

    move-object/from16 v12, p1

    invoke-direct {v3, v12}, Lu0/c$a;-><init>(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v0, v2, v6, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v3, Lu0/d$a;

    invoke-direct {v3, v12}, Lu0/d$a;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v0, v2, v6, v3}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    const/16 v0, 0x1d

    move/from16 v3, p3

    if-lt v3, v0, :cond_4

    .line 79
    new-instance v0, Lu0/e$c;

    invoke-direct {v0, v12}, Lu0/e$c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2, v6, v0}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    .line 80
    new-instance v0, Lu0/e$b;

    invoke-direct {v0, v12}, Lu0/e$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v2, v11, v0}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    .line 81
    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/model/w$d;

    move-object/from16 v3, v16

    invoke-direct {v0, v3}, Lcom/bumptech/glide/load/model/w$d;-><init>(Landroid/content/ContentResolver;)V

    .line 82
    invoke-virtual {v8, v2, v6, v0}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v13, Lcom/bumptech/glide/load/model/w$b;

    invoke-direct {v13, v3}, Lcom/bumptech/glide/load/model/w$b;-><init>(Landroid/content/ContentResolver;)V

    .line 83
    invoke-virtual {v0, v2, v11, v13}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v11, Lcom/bumptech/glide/load/model/w$a;

    invoke-direct {v11, v3}, Lcom/bumptech/glide/load/model/w$a;-><init>(Landroid/content/ContentResolver;)V

    .line 84
    invoke-virtual {v0, v2, v1, v11}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/model/x$a;

    invoke-direct {v1}, Lcom/bumptech/glide/load/model/x$a;-><init>()V

    .line 85
    invoke-virtual {v0, v2, v6, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v1, Lu0/h$a;

    invoke-direct {v1}, Lu0/h$a;-><init>()V

    const-class v3, Ljava/net/URL;

    .line 86
    invoke-virtual {v0, v3, v6, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/model/k$a;

    invoke-direct {v1, v12}, Lcom/bumptech/glide/load/model/k$a;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {v0, v2, v10, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v1, Lu0/a$a;

    invoke-direct {v1}, Lu0/a$a;-><init>()V

    const-class v3, Lcom/bumptech/glide/load/model/g;

    .line 88
    invoke-virtual {v0, v3, v6, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/model/b$a;

    invoke-direct {v1}, Lcom/bumptech/glide/load/model/b$a;-><init>()V

    const-class v3, [B

    .line 89
    invoke-virtual {v0, v3, v9, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/model/b$d;

    invoke-direct {v1}, Lcom/bumptech/glide/load/model/b$d;-><init>()V

    .line 90
    invoke-virtual {v0, v3, v6, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 91
    invoke-static {}, Lcom/bumptech/glide/load/model/v$a;->a()Lcom/bumptech/glide/load/model/v$a;

    move-result-object v1

    invoke-virtual {v0, v2, v2, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/bumptech/glide/load/model/v$a;->a()Lcom/bumptech/glide/load/model/v$a;

    move-result-object v1

    invoke-virtual {v0, v7, v7, v1}, Lcom/bumptech/glide/h;->d(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/drawable/e;

    invoke-direct {v1}, Lcom/bumptech/glide/load/resource/drawable/e;-><init>()V

    .line 93
    invoke-virtual {v0, v7, v7, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v1, Lcom/bumptech/glide/load/resource/transcode/b;

    invoke-direct {v1, v4}, Lcom/bumptech/glide/load/resource/transcode/b;-><init>(Landroid/content/res/Resources;)V

    .line 94
    invoke-virtual {v0, v15, v5, v1}, Lcom/bumptech/glide/h;->q(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/e;)Lcom/bumptech/glide/h;

    move-result-object v0

    move-object/from16 v1, p7

    .line 95
    invoke-virtual {v0, v15, v3, v1}, Lcom/bumptech/glide/h;->q(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/e;)Lcom/bumptech/glide/h;

    move-result-object v0

    new-instance v2, Lcom/bumptech/glide/load/resource/transcode/c;

    move-object/from16 v6, p4

    move-object/from16 v10, p13

    invoke-direct {v2, v6, v1, v10}, Lcom/bumptech/glide/load/resource/transcode/c;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;Lcom/bumptech/glide/load/resource/transcode/e;Lcom/bumptech/glide/load/resource/transcode/e;)V

    .line 96
    invoke-virtual {v0, v7, v3, v2}, Lcom/bumptech/glide/h;->q(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/e;)Lcom/bumptech/glide/h;

    move-result-object v0

    move-object/from16 v1, v18

    .line 97
    invoke-virtual {v0, v1, v3, v10}, Lcom/bumptech/glide/h;->q(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/e;)Lcom/bumptech/glide/h;

    .line 98
    invoke-static/range {p4 .. p4}, Lcom/bumptech/glide/load/resource/bitmap/f0;->d(Lcom/bumptech/glide/load/engine/bitmap_recycle/d;)Lcom/bumptech/glide/load/k;

    move-result-object v0

    .line 99
    invoke-virtual {v8, v9, v15, v0}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    .line 100
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/a;

    invoke-direct {v1, v4, v0}, Lcom/bumptech/glide/load/resource/bitmap/a;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/k;)V

    invoke-virtual {v8, v9, v5, v1}, Lcom/bumptech/glide/h;->c(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/k;)Lcom/bumptech/glide/h;

    .line 101
    new-instance v5, Lcom/bumptech/glide/request/target/c;

    invoke-direct {v5}, Lcom/bumptech/glide/request/target/c;-><init>()V

    .line 102
    new-instance v0, Lcom/bumptech/glide/d;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p2

    move/from16 v10, p12

    move/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/d;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/b;Lcom/bumptech/glide/h;Lcom/bumptech/glide/request/target/c;Lcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;Lcom/bumptech/glide/load/engine/k;ZI)V

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bumptech/glide/b;->glideContext:Lcom/bumptech/glide/d;

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    sget-boolean v0, Lcom/bumptech/glide/b;->isInitializing:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    .line 7
    sput-boolean v0, Lcom/bumptech/glide/b;->isInitializing:Z

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Lcom/bumptech/glide/b;->m(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    .line 11
    const/4 p0, 0x0

    .line 12
    .line 13
    sput-boolean p0, Lcom/bumptech/glide/b;->isInitializing:Z

    .line 14
    return-void

    .line 15
    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string p1, "You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead"

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0
.end method

.method public static c(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Lcom/bumptech/glide/b;->glide:Lcom/bumptech/glide/b;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    const-class v1, Lcom/bumptech/glide/b;

    .line 15
    monitor-enter v1

    .line 16
    .line 17
    :try_start_0
    sget-object v2, Lcom/bumptech/glide/b;->glide:Lcom/bumptech/glide/b;

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v1

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0

    .line 30
    .line 31
    :cond_1
    :goto_2
    sget-object p0, Lcom/bumptech/glide/b;->glide:Lcom/bumptech/glide/b;

    .line 32
    return-object p0
.end method

.method private static d(Landroid/content/Context;)Lcom/bumptech/glide/GeneratedAppGlideModule;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    :try_start_0
    const-string v0, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    .line 9
    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    .line 11
    const-class v3, Landroid/content/Context;

    .line 12
    const/4 v4, 0x0

    .line 13
    .line 14
    aput-object v3, v2, v4

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 18
    move-result-object v0

    .line 19
    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    move-result-object p0

    .line 25
    .line 26
    aput-object p0, v1, v4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 31
    .line 32
    check-cast p0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_5

    .line 34
    :catch_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :catch_2
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :catch_3
    move-exception p0

    .line 41
    goto :goto_3

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-static {p0}, Lcom/bumptech/glide/b;->q(Ljava/lang/Exception;)V

    .line 45
    goto :goto_4

    .line 46
    .line 47
    .line 48
    :goto_1
    invoke-static {p0}, Lcom/bumptech/glide/b;->q(Ljava/lang/Exception;)V

    .line 49
    goto :goto_4

    .line 50
    .line 51
    .line 52
    :goto_2
    invoke-static {p0}, Lcom/bumptech/glide/b;->q(Ljava/lang/Exception;)V

    .line 53
    goto :goto_4

    .line 54
    .line 55
    .line 56
    :goto_3
    invoke-static {p0}, Lcom/bumptech/glide/b;->q(Ljava/lang/Exception;)V

    .line 57
    goto :goto_4

    .line 58
    :catch_4
    const/4 p0, 0x5

    .line 59
    .line 60
    const-string v0, "Glide"

    .line 61
    .line 62
    .line 63
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 64
    move-result p0

    .line 65
    .line 66
    if-eqz p0, :cond_0

    .line 67
    .line 68
    const-string p0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    .line 69
    .line 70
    .line 71
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    :goto_4
    const/4 p0, 0x0

    .line 73
    :goto_5
    return-object p0
.end method

.method private static l(Landroid/content/Context;)Lcom/bumptech/glide/manager/l;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 3
    .line 4
    .line 5
    invoke-static {p0, v0}, Lcom/bumptech/glide/util/j;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 9
    move-result-object p0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->k()Lcom/bumptech/glide/manager/l;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static m(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/bumptech/glide/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/bumptech/glide/c;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/b;->n(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/GeneratedAppGlideModule;)V

    .line 9
    return-void
.end method

.method private static n(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bumptech/glide/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/GeneratedAppGlideModule;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    move-result-object p0

    .line 5
    .line 6
    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Lx0/a;->c()Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :cond_0
    new-instance v0, Lx0/d;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0}, Lx0/d;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lx0/d;->a()Ljava/util/List;

    .line 25
    move-result-object v0

    .line 26
    :cond_1
    const/4 v1, 0x3

    .line 27
    .line 28
    const-string v2, "Glide"

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    .line 34
    move-result-object v3

    .line 35
    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 38
    move-result v3

    .line 39
    .line 40
    if-nez v3, :cond_4

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->d()Ljava/util/Set;

    .line 44
    move-result-object v3

    .line 45
    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v4

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v5

    .line 53
    .line 54
    if-eqz v5, :cond_4

    .line 55
    .line 56
    .line 57
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v5

    .line 59
    .line 60
    check-cast v5, Lx0/b;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    move-result-object v6

    .line 65
    .line 66
    .line 67
    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result v6

    .line 69
    .line 70
    if-nez v6, :cond_2

    .line 71
    goto :goto_0

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 75
    move-result v6

    .line 76
    .line 77
    if-eqz v6, :cond_3

    .line 78
    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    const-string v7, "AppGlideModule excludes manifest GlideModule: "

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v5

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 101
    goto :goto_0

    .line 102
    .line 103
    .line 104
    :cond_4
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 105
    move-result v1

    .line 106
    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object v1

    .line 112
    .line 113
    .line 114
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v3

    .line 116
    .line 117
    if-eqz v3, :cond_5

    .line 118
    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v3

    .line 122
    .line 123
    check-cast v3, Lx0/b;

    .line 124
    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    const-string v5, "Discovered GlideModule from manifest: "

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    move-result-object v3

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 145
    .line 146
    .line 147
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    goto :goto_1

    .line 149
    .line 150
    :cond_5
    if-eqz p2, :cond_6

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/bumptech/glide/GeneratedAppGlideModule;->e()Lcom/bumptech/glide/manager/l$b;

    .line 154
    move-result-object v1

    .line 155
    goto :goto_2

    .line 156
    :cond_6
    const/4 v1, 0x0

    .line 157
    .line 158
    .line 159
    :goto_2
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/c;->b(Lcom/bumptech/glide/manager/l$b;)V

    .line 160
    .line 161
    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 163
    move-result-object v1

    .line 164
    .line 165
    .line 166
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    move-result v2

    .line 168
    .line 169
    if-eqz v2, :cond_7

    .line 170
    .line 171
    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    move-result-object v2

    .line 174
    .line 175
    check-cast v2, Lx0/b;

    .line 176
    .line 177
    .line 178
    invoke-interface {v2, p0, p1}, Lx0/b;->a(Landroid/content/Context;Lcom/bumptech/glide/c;)V

    .line 179
    goto :goto_3

    .line 180
    .line 181
    :cond_7
    if-eqz p2, :cond_8

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, p0, p1}, Lx0/a;->b(Landroid/content/Context;Lcom/bumptech/glide/c;)V

    .line 185
    .line 186
    .line 187
    :cond_8
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/c;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 188
    move-result-object p1

    .line 189
    .line 190
    .line 191
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    .line 195
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 196
    move-result v1

    .line 197
    .line 198
    if-eqz v1, :cond_9

    .line 199
    .line 200
    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 202
    move-result-object v1

    .line 203
    .line 204
    check-cast v1, Lx0/b;

    .line 205
    .line 206
    :try_start_0
    iget-object v2, p1, Lcom/bumptech/glide/b;->registry:Lcom/bumptech/glide/h;

    .line 207
    .line 208
    .line 209
    invoke-interface {v1, p0, p1, v2}, Lx0/b;->b(Landroid/content/Context;Lcom/bumptech/glide/b;Lcom/bumptech/glide/h;)V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_4

    .line 211
    :catch_0
    move-exception p0

    .line 212
    .line 213
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 214
    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    const-string v0, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    move-result-object v0

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    .line 233
    .line 234
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p2

    .line 239
    .line 240
    .line 241
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    throw p1

    .line 243
    .line 244
    :cond_9
    if-eqz p2, :cond_a

    .line 245
    .line 246
    iget-object v0, p1, Lcom/bumptech/glide/b;->registry:Lcom/bumptech/glide/h;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p2, p0, p1, v0}, Lx0/c;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Lcom/bumptech/glide/h;)V

    .line 250
    .line 251
    .line 252
    :cond_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 253
    .line 254
    sput-object p1, Lcom/bumptech/glide/b;->glide:Lcom/bumptech/glide/b;

    .line 255
    return-void
.end method

.method private static q(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    .line 4
    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    throw v0
.end method

.method public static t(Landroid/content/Context;)Lcom/bumptech/glide/j;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {p0}, Lcom/bumptech/glide/b;->l(Landroid/content/Context;)Lcom/bumptech/glide/manager/l;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/l;->e(Landroid/content/Context;)Lcom/bumptech/glide/j;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static u(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/j;
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/bumptech/glide/b;->l(Landroid/content/Context;)Lcom/bumptech/glide/manager/l;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/l;->f(Landroidx/fragment/app/Fragment;)Lcom/bumptech/glide/j;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/b;->memoryCache:Lcom/bumptech/glide/load/engine/cache/h;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/h;->b()V

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/b;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->b()V

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/b;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->b()V

    .line 19
    return-void
.end method

.method public e()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/b;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    return-object v0
.end method

.method public f()Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/b;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    return-object v0
.end method

.method g()Lcom/bumptech/glide/manager/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/b;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/d;

    return-object v0
.end method

.method public h()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/b;->glideContext:Lcom/bumptech/glide/d;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method i()Lcom/bumptech/glide/d;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/b;->glideContext:Lcom/bumptech/glide/d;

    return-object v0
.end method

.method public j()Lcom/bumptech/glide/h;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/b;->registry:Lcom/bumptech/glide/h;

    return-object v0
.end method

.method public k()Lcom/bumptech/glide/manager/l;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/b;->requestManagerRetriever:Lcom/bumptech/glide/manager/l;

    return-object v0
.end method

.method o(Lcom/bumptech/glide/j;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/b;->managers:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->managers:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/b;->managers:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "Cannot register already registered manager"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bumptech/glide/b;->b()V

    .line 4
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/b;->r(I)V

    .line 4
    return-void
.end method

.method p(Lcom/bumptech/glide/request/target/e;)Z
    .locals 3
    .param p1    # Lcom/bumptech/glide/request/target/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/target/e<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/b;->managers:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->managers:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v1

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    .line 21
    check-cast v2, Lcom/bumptech/glide/j;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p1}, Lcom/bumptech/glide/j;->w(Lcom/bumptech/glide/request/target/e;)Z

    .line 25
    move-result v2

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    monitor-exit v0

    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    monitor-exit v0

    .line 34
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method public r(I)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bumptech/glide/b;->managers:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    .line 21
    check-cast v1, Lcom/bumptech/glide/j;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/bumptech/glide/j;->onTrimMemory(I)V

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/b;->memoryCache:Lcom/bumptech/glide/load/engine/cache/h;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/cache/h;->a(I)V

    .line 31
    .line 32
    iget-object v0, p0, Lcom/bumptech/glide/b;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/d;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;->a(I)V

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bumptech/glide/b;->arrayPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->a(I)V

    .line 41
    return-void
.end method

.method s(Lcom/bumptech/glide/j;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/b;->managers:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->managers:Ljava/util/List;

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bumptech/glide/b;->managers:Ljava/util/List;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v1, "Cannot unregister not yet registered manager"

    .line 25
    .line 26
    .line 27
    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method
