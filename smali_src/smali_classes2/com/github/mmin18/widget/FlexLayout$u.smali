.class Lcom/github/mmin18/widget/FlexLayout$u;
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
    float-to-double p1, p4

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    .line 5
    move-result-wide p1

    .line 6
    double-to-float p1, p1

    .line 7
    return p1
.end method
