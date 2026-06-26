.class final Lcom/github/mmin18/widget/FlexLayout$10;
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

    .line 903
    invoke-direct/range {p0 .. p5}, Lcom/github/mmin18/widget/FlexLayout$Operator;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/github/mmin18/widget/FlexLayout;IIFF)F
    .locals 0

    cmpl-float p1, p4, p4

    if-nez p1, :cond_1

    cmpl-float p1, p5, p5

    if-nez p1, :cond_1

    cmpl-float p1, p4, p5

    if-ltz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1
.end method
