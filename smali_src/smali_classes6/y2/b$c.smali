.class final Ly2/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final bottomFieldData:[B

.field public final id:I

.field public final nonModifyingColorFlag:Z

.field public final topFieldData:[B


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Ly2/b$c;->id:I

    .line 6
    .line 7
    iput-boolean p2, p0, Ly2/b$c;->nonModifyingColorFlag:Z

    .line 8
    .line 9
    iput-object p3, p0, Ly2/b$c;->topFieldData:[B

    .line 10
    .line 11
    iput-object p4, p0, Ly2/b$c;->bottomFieldData:[B

    .line 12
    return-void
.end method
