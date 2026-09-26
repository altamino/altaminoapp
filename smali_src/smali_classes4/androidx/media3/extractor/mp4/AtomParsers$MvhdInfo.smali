.class public final Landroidx/media3/extractor/mp4/AtomParsers$MvhdInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/AtomParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MvhdInfo"
.end annotation


# instance fields
.field public final metadata:Landroidx/media3/common/Metadata;

.field public final timescale:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/Metadata;J)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Landroidx/media3/extractor/mp4/AtomParsers$MvhdInfo;->metadata:Landroidx/media3/common/Metadata;

    .line 6
    .line 7
    iput-wide p2, p0, Landroidx/media3/extractor/mp4/AtomParsers$MvhdInfo;->timescale:J

    .line 8
    return-void
.end method
