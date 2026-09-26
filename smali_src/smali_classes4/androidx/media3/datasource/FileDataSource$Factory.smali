.class public final Landroidx/media3/datasource/FileDataSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/datasource/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/datasource/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private listener:Landroidx/media3/datasource/TransferListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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
.method public a()Landroidx/media3/datasource/FileDataSource;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Landroidx/media3/datasource/FileDataSource;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Landroidx/media3/datasource/FileDataSource;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/media3/datasource/FileDataSource$Factory;->listener:Landroidx/media3/datasource/TransferListener;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/media3/datasource/BaseDataSource;->c(Landroidx/media3/datasource/TransferListener;)V

    .line 13
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createDataSource()Landroidx/media3/datasource/DataSource;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/datasource/FileDataSource$Factory;->a()Landroidx/media3/datasource/FileDataSource;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
