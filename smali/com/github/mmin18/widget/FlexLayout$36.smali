.class final Lcom/github/mmin18/widget/FlexLayout$36;
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

    .line 1089
    invoke-direct/range {p0 .. p5}, Lcom/github/mmin18/widget/FlexLayout$Operator;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public eval(Lcom/github/mmin18/widget/FlexLayout;IIFF)F
    .locals 6

    .line 1092
    sget-object v0, Lcom/github/mmin18/widget/FlexLayout;->X_MATCH_PARENT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/github/mmin18/widget/FlexLayout$Operator;->eval(Lcom/github/mmin18/widget/FlexLayout;IIFF)F

    move-result p1

    return p1
.end method
