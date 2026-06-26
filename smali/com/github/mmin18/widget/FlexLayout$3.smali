.class final Lcom/github/mmin18/widget/FlexLayout$3;
.super Lcom/github/mmin18/widget/FlexLayout$Operator;
.source "FlexLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 833
    invoke-direct/range {p0 .. p5}, Lcom/github/mmin18/widget/FlexLayout$Operator;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/github/mmin18/widget/FlexLayout;IIFF)F
    .locals 1

    const/high16 p2, 0x7fc00000    # Float.NaN

    const p5, 0x3c23d70a    # 0.01f

    const/4 v0, -0x1

    if-nez p3, :cond_1

    .line 837
    iget p1, p1, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    if-ne p1, v0, :cond_0

    return p2

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p4

    mul-float p1, p1, p5

    return p1

    .line 843
    :cond_1
    iget p1, p1, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    if-ne p1, v0, :cond_0

    return p2
.end method
