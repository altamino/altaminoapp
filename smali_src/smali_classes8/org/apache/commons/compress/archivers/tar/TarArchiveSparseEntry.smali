.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/tar/TarConstants;


# instance fields
.field private final isExtended:Z


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    const/16 v0, 0x1f8

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBoolean([BI)Z

    .line 9
    move-result p1

    .line 10
    .line 11
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended:Z

    .line 12
    return-void
.end method


# virtual methods
.method public isExtended()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended:Z

    return v0
.end method
