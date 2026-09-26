.class abstract Lcom/github/mmin18/widget/FlexLayout$m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "m0"
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

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$m0;->op:Ljava/lang/String;

    .line 6
    .line 7
    iput p2, p0, Lcom/github/mmin18/widget/FlexLayout$m0;->prec:I

    .line 8
    .line 9
    iput p3, p0, Lcom/github/mmin18/widget/FlexLayout$m0;->assoc:I

    .line 10
    .line 11
    iput p4, p0, Lcom/github/mmin18/widget/FlexLayout$m0;->argc:I

    .line 12
    .line 13
    iput p5, p0, Lcom/github/mmin18/widget/FlexLayout$m0;->flag:I

    .line 14
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/github/mmin18/widget/FlexLayout;IIFF)F
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/mmin18/widget/FlexLayout$m0;->op:Ljava/lang/String;

    return-object v0
.end method
