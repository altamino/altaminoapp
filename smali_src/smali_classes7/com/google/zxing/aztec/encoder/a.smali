.class public final Lcom/google/zxing/aztec/encoder/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private codeWords:I

.field private compact:Z

.field private layers:I

.field private matrix:Lg5/b;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()Lg5/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/a;->matrix:Lg5/b;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/aztec/encoder/a;->codeWords:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/zxing/aztec/encoder/a;->compact:Z

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/aztec/encoder/a;->layers:I

    return-void
.end method

.method public e(Lg5/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/a;->matrix:Lg5/b;

    return-void
.end method

.method public f(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/zxing/aztec/encoder/a;->size:I

    return-void
.end method
