.class public final Landroidx/media3/datasource/DefaultDataSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/DefaultDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final context:Landroid/content/Context;

.field private transferListener:Landroidx/media3/datasource/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Landroidx/media3/datasource/DefaultHttpDataSource$Factory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/datasource/DefaultDataSource;
    .locals 3
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->context:Landroid/content/Context;

    .line 5
    .line 6
    iget-object v2, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->baseDataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 7
    .line 8
    .line 9
    invoke-interface {v2}, Landroidx/media3/datasource/DataSource$Factory;->createDataSource()Landroidx/media3/datasource/DataSource;

    .line 10
    move-result-object v2

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Landroidx/media3/datasource/DefaultDataSource;-><init>(Landroid/content/Context;Landroidx/media3/datasource/DataSource;)V

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/media3/datasource/DefaultDataSource$Factory;->transferListener:Landroidx/media3/datasource/TransferListener;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/DefaultDataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    .line 21
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1
    .annotation build Landroidx/media3/common/util/UnstableApi;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/datasource/DefaultDataSource$Factory;->a()Landroidx/media3/datasource/DefaultDataSource;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
