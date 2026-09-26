.class public Landroidx/renderscript/Int3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/renderscript/Int3;->x:I

    iput p2, p0, Landroidx/renderscript/Int3;->y:I

    iput p3, p0, Landroidx/renderscript/Int3;->z:I

    return-void
.end method
