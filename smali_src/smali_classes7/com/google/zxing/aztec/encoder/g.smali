.class abstract Lcom/google/zxing/aztec/encoder/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final EMPTY:Lcom/google/zxing/aztec/encoder/g;


# instance fields
.field private final previous:Lcom/google/zxing/aztec/encoder/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/zxing/aztec/encoder/e;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v2}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/g;II)V

    .line 8
    .line 9
    sput-object v0, Lcom/google/zxing/aztec/encoder/g;->EMPTY:Lcom/google/zxing/aztec/encoder/g;

    .line 10
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/aztec/encoder/g;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/g;->previous:Lcom/google/zxing/aztec/encoder/g;

    .line 6
    return-void
.end method


# virtual methods
.method final a(II)Lcom/google/zxing/aztec/encoder/g;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/zxing/aztec/encoder/e;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/google/zxing/aztec/encoder/e;-><init>(Lcom/google/zxing/aztec/encoder/g;II)V

    .line 6
    return-object v0
.end method

.method final b(II)Lcom/google/zxing/aztec/encoder/g;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/google/zxing/aztec/encoder/b;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2}, Lcom/google/zxing/aztec/encoder/b;-><init>(Lcom/google/zxing/aztec/encoder/g;II)V

    .line 6
    return-object v0
.end method

.method abstract c(Lg5/a;[B)V
.end method

.method final d()Lcom/google/zxing/aztec/encoder/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/g;->previous:Lcom/google/zxing/aztec/encoder/g;

    return-object v0
.end method
