.class Landroidx/recyclerview/widget/DiffUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/DiffUtil$Diagonal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/DiffUtil$Diagonal;Landroidx/recyclerview/widget/DiffUtil$Diagonal;)I
    .locals 0

    .line 1
    .line 2
    iget p1, p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 3
    .line 4
    iget p2, p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;->x:I

    .line 5
    sub-int/2addr p1, p2

    .line 6
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 3
    .line 4
    check-cast p2, Landroidx/recyclerview/widget/DiffUtil$Diagonal;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$1;->a(Landroidx/recyclerview/widget/DiffUtil$Diagonal;Landroidx/recyclerview/widget/DiffUtil$Diagonal;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
