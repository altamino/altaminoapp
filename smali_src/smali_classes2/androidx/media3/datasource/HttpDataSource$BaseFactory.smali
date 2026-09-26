.class public abstract Landroidx/media3/datasource/HttpDataSource$BaseFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/HttpDataSource$Factory;


# annotations
.annotation build Landroidx/media3/common/util/UnstableApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseFactory"
.end annotation


# instance fields
.field private final defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/media3/datasource/HttpDataSource$RequestProperties;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/media3/datasource/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/datasource/HttpDataSource;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/media3/datasource/HttpDataSource$BaseFactory;->defaultRequestProperties:Landroidx/media3/datasource/HttpDataSource$RequestProperties;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/media3/datasource/HttpDataSource$BaseFactory;->b(Landroidx/media3/datasource/HttpDataSource$RequestProperties;)Landroidx/media3/datasource/HttpDataSource;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected abstract b(Landroidx/media3/datasource/HttpDataSource$RequestProperties;)Landroidx/media3/datasource/HttpDataSource;
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/datasource/HttpDataSource$BaseFactory;->a()Landroidx/media3/datasource/HttpDataSource;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
