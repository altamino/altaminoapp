.class final Ly2/b$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field public final clutId:I

.field public final depth:I

.field public final fillFlag:Z

.field public final height:I

.field public final id:I

.field public final levelOfCompatibility:I

.field public final pixelCode2Bit:I

.field public final pixelCode4Bit:I

.field public final pixelCode8Bit:I

.field public final regionObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ly2/b$g;",
            ">;"
        }
    .end annotation
.end field

.field public final width:I


# direct methods
.method public constructor <init>(IZIIIIIIIILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIIIIIIII",
            "Landroid/util/SparseArray<",
            "Ly2/b$g;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput p1, p0, Ly2/b$f;->id:I

    .line 6
    .line 7
    iput-boolean p2, p0, Ly2/b$f;->fillFlag:Z

    .line 8
    .line 9
    iput p3, p0, Ly2/b$f;->width:I

    .line 10
    .line 11
    iput p4, p0, Ly2/b$f;->height:I

    .line 12
    .line 13
    iput p5, p0, Ly2/b$f;->levelOfCompatibility:I

    .line 14
    .line 15
    iput p6, p0, Ly2/b$f;->depth:I

    .line 16
    .line 17
    iput p7, p0, Ly2/b$f;->clutId:I

    .line 18
    .line 19
    iput p8, p0, Ly2/b$f;->pixelCode8Bit:I

    .line 20
    .line 21
    iput p9, p0, Ly2/b$f;->pixelCode4Bit:I

    .line 22
    .line 23
    iput p10, p0, Ly2/b$f;->pixelCode2Bit:I

    .line 24
    .line 25
    iput-object p11, p0, Ly2/b$f;->regionObjects:Landroid/util/SparseArray;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Ly2/b$f;)V
    .locals 4

    .line 1
    .line 2
    iget-object p1, p1, Ly2/b$f;->regionObjects:Landroid/util/SparseArray;

    .line 3
    const/4 v0, 0x0

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Ly2/b$f;->regionObjects:Landroid/util/SparseArray;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    move-result v2

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    .line 21
    check-cast v3, Ly2/b$g;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method
