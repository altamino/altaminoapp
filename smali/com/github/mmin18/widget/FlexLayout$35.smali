.class final Lcom/github/mmin18/widget/FlexLayout$35;
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

    .line 1073
    invoke-direct/range {p0 .. p5}, Lcom/github/mmin18/widget/FlexLayout$Operator;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/github/mmin18/widget/FlexLayout;IIFF)F
    .locals 0

    const/high16 p2, 0x7fc00000    # Float.NaN

    const/4 p4, -0x1

    if-nez p3, :cond_1

    .line 1077
    iget p1, p1, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    if-eq p1, p4, :cond_0

    int-to-float p1, p1

    return p1

    :cond_0
    return p2

    .line 1082
    :cond_1
    iget p1, p1, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    if-eq p1, p4, :cond_2

    int-to-float p1, p1

    return p1

    :cond_2
    return p2
.end method
