.class public Lcom/tonyodev/fetch/exception/DownloadInterruptedException;
.super Ljava/lang/RuntimeException;
.source "DownloadInterruptedException.java"


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    iput p2, p0, Lcom/tonyodev/fetch/exception/DownloadInterruptedException;->errorCode:I

    return-void
.end method
