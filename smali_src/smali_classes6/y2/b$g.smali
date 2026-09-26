.class final Ly2/b$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field public final backgroundPixelCode:I

.field public final foregroundPixelCode:I

.field public final horizontalPosition:I

.field public final provider:I

.field public final type:I

.field public final verticalPosition:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Ly2/b$g;->type:I

    .line 6
    .line 7
    iput p2, p0, Ly2/b$g;->provider:I

    .line 8
    .line 9
    iput p3, p0, Ly2/b$g;->horizontalPosition:I

    .line 10
    .line 11
    iput p4, p0, Ly2/b$g;->verticalPosition:I

    .line 12
    .line 13
    iput p5, p0, Ly2/b$g;->foregroundPixelCode:I

    .line 14
    .line 15
    iput p6, p0, Ly2/b$g;->backgroundPixelCode:I

    .line 16
    return-void
.end method
