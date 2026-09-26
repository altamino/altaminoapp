.class public final Landroidx/media3/extractor/mp4/AtomParsers$UdtaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UdtaInfo"
.end annotation


# instance fields
.field public final metaMetadata:Landroidx/media3/common/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final smtaMetadata:Landroidx/media3/common/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final xyzMetadata:Landroidx/media3/common/Metadata;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/media3/common/Metadata;Landroidx/media3/common/Metadata;Landroidx/media3/common/Metadata;)V
    .locals 0
    .param p1    # Landroidx/media3/common/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/media3/common/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/media3/common/Metadata;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$UdtaInfo;->metaMetadata:Landroidx/media3/common/Metadata;

    .line 6
    .line 7
    iput-object p2, p0, Landroidx/media3/extractor/mp4/AtomParsers$UdtaInfo;->smtaMetadata:Landroidx/media3/common/Metadata;

    .line 8
    .line 9
    iput-object p3, p0, Landroidx/media3/extractor/mp4/AtomParsers$UdtaInfo;->xyzMetadata:Landroidx/media3/common/Metadata;

    .line 10
    return-void
.end method
