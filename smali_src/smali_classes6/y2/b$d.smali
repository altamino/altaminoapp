.class final Ly2/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final regions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ly2/b$e;",
            ">;"
        }
    .end annotation
.end field

.field public final state:I

.field public final timeOutSecs:I

.field public final version:I


# direct methods
.method public constructor <init>(IIILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Landroid/util/SparseArray<",
            "Ly2/b$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Ly2/b$d;->timeOutSecs:I

    .line 6
    .line 7
    iput p2, p0, Ly2/b$d;->version:I

    .line 8
    .line 9
    iput p3, p0, Ly2/b$d;->state:I

    .line 10
    .line 11
    iput-object p4, p0, Ly2/b$d;->regions:Landroid/util/SparseArray;

    .line 12
    return-void
.end method
