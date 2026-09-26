.class public final Landroidx/media3/datasource/DataSourceBitmapLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/BitmapLoader;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation


# static fields
.field public static final DEFAULT_EXECUTOR_SERVICE:Lcom/google/common/base/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/u<",
            "Lcom/google/common/util/concurrent/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final listeningExecutorService:Lcom/google/common/util/concurrent/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/datasource/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/datasource/b;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/common/base/v;->a(Lcom/google/common/base/u;)Lcom/google/common/base/u;

    .line 9
    move-result-object v0

    .line 10
    .line 11
    sput-object v0, Landroidx/media3/datasource/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lcom/google/common/base/u;

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Landroidx/media3/datasource/DataSourceBitmapLoader;->DEFAULT_EXECUTOR_SERVICE:Lcom/google/common/base/u;

    .line 1
    invoke-interface {v0}, Lcom/google/common/base/u;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/m;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/m;

    new-instance v1, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v1, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1}, Landroidx/media3/datasource/DataSourceBitmapLoader;-><init>(Lcom/google/common/util/concurrent/m;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/m;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->listeningExecutorService:Lcom/google/common/util/concurrent/m;

    iput-object p2, p0, Landroidx/media3/datasource/DataSourceBitmapLoader;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method

.method public static synthetic a()Lcom/google/common/util/concurrent/m;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/media3/datasource/DataSourceBitmapLoader;->b()Lcom/google/common/util/concurrent/m;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic b()Lcom/google/common/util/concurrent/m;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/common/util/concurrent/n;->a(Ljava/util/concurrent/ExecutorService;)Lcom/google/common/util/concurrent/m;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
