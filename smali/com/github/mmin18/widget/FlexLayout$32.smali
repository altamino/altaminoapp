.class final Lcom/github/mmin18/widget/FlexLayout$32;
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

    .line 1055
    invoke-direct/range {p0 .. p5}, Lcom/github/mmin18/widget/FlexLayout$Operator;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/github/mmin18/widget/FlexLayout;IIFF)F
    .locals 0

    float-to-double p1, p4

    float-to-double p3, p5

    .line 1058
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method
