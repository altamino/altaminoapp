.class final Lcom/google/zxing/qrcode/encoder/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dataBytes:[B

.field private final errorCorrectionBytes:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/zxing/qrcode/encoder/a;->dataBytes:[B

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/zxing/qrcode/encoder/a;->errorCorrectionBytes:[B

    .line 8
    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/a;->dataBytes:[B

    return-object v0
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/qrcode/encoder/a;->errorCorrectionBytes:[B

    return-object v0
.end method
