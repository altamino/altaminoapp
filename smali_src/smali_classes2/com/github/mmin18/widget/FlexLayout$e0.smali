.class Lcom/github/mmin18/widget/FlexLayout$e0;
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
    .locals 1

    .line 1
    .line 2
    .line 3
    const p2, 0x3c23d70a    # 0.01f

    .line 4
    .line 5
    const/high16 p5, 0x7fc00000    # Float.NaN

    .line 6
    const/4 v0, -0x1

    .line 7
    .line 8
    if-nez p3, :cond_1

    .line 9
    .line 10
    iget p1, p1, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    return p5

    .line 14
    :cond_0
    int-to-float p1, p1

    .line 15
    mul-float/2addr p1, p4

    .line 16
    mul-float/2addr p1, p2

    .line 17
    return p1

    .line 18
    .line 19
    :cond_1
    iget p1, p1, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    .line 20
    .line 21
    if-ne p1, v0, :cond_0

    .line 22
    return p5
.end method
