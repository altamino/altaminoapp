.class final Ly2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final height:I

.field public final horizontalPositionMaximum:I

.field public final horizontalPositionMinimum:I

.field public final verticalPositionMaximum:I

.field public final verticalPositionMinimum:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Ly2/b$b;->width:I

    .line 6
    .line 7
    iput p2, p0, Ly2/b$b;->height:I

    .line 8
    .line 9
    iput p3, p0, Ly2/b$b;->horizontalPositionMinimum:I

    .line 10
    .line 11
    iput p4, p0, Ly2/b$b;->horizontalPositionMaximum:I

    .line 12
    .line 13
    iput p5, p0, Ly2/b$b;->verticalPositionMinimum:I

    .line 14
    .line 15
    iput p6, p0, Ly2/b$b;->verticalPositionMaximum:I

    .line 16
    return-void
.end method
