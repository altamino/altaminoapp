.class public final Lcom/tonyodev/fetch/exception/NotUsableException;
.super Ljava/lang/RuntimeException;
.source "NotUsableException.java"


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 31
    iput p2, p0, Lcom/tonyodev/fetch/exception/NotUsableException;->errorCode:I

    return-void
.end method
