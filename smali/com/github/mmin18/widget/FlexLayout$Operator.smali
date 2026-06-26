.class abstract Lcom/github/mmin18/widget/FlexLayout$Operator;
.super Ljava/lang/Object;
.source "FlexLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Operator"
.end annotation


# static fields
.field public static final ASSOC_LEFT:I = 0x1

.field public static final ASSOC_RIGHT:I = 0x2

.field public static final FLAG_FUNCTION:I = 0x1


# instance fields
.field public final argc:I

.field public final assoc:I

.field public final flag:I

.field public final op:Ljava/lang/String;

.field public final prec:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$Operator;->op:Ljava/lang/String;

    .line 795
    iput p2, p0, Lcom/github/mmin18/widget/FlexLayout$Operator;->prec:I

    .line 796
    iput p3, p0, Lcom/github/mmin18/widget/FlexLayout$Operator;->assoc:I

    .line 797
    iput p4, p0, Lcom/github/mmin18/widget/FlexLayout$Operator;->argc:I

    .line 798
    iput p5, p0, Lcom/github/mmin18/widget/FlexLayout$Operator;->flag:I

    return-void
.end method


# virtual methods
.method public abstract eval(Lcom/github/mmin18/widget/FlexLayout;IIFF)F
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/github/mmin18/widget/FlexLayout$Operator;->op:Ljava/lang/String;

    return-object v0
.end method
