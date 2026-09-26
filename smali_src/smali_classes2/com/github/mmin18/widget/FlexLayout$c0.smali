.class Lcom/github/mmin18/widget/FlexLayout$c0;
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
    .locals 6

    .line 1
    .line 2
    sget-object v0, Lcom/github/mmin18/widget/FlexLayout;->X_MATCH_PARENT:Lcom/github/mmin18/widget/FlexLayout$m0;

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/github/mmin18/widget/FlexLayout$m0;->a(Lcom/github/mmin18/widget/FlexLayout;IIFF)F

    .line 11
    move-result p1

    .line 12
    return p1
.end method
