.class Lcom/github/mmin18/widget/FlexLayout$b0;
.super Lcom/github/mmin18/widget/FlexLayout$m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/github/mmin18/widget/FlexLayout$m0;-><init>(Ljava/lang/String;IIII)V

    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/github/mmin18/widget/FlexLayout;IIFF)F
    .locals 0

    .line 1
    .line 2
    const/high16 p2, 0x7fc00000    # Float.NaN

    .line 3
    const/4 p4, -0x1

    .line 4
    .line 5
    if-nez p3, :cond_1

    .line 6
    .line 7
    iget p1, p1, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 8
    .line 9
    if-eq p1, p4, :cond_0

    .line 10
    int-to-float p1, p1

    .line 11
    return p1

    .line 12
    :cond_0
    return p2

    .line 13
    .line 14
    :cond_1
    iget p1, p1, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 15
    .line 16
    if-eq p1, p4, :cond_2

    .line 17
    int-to-float p1, p1

    .line 18
    return p1

    .line 19
    :cond_2
    return p2
.end method
