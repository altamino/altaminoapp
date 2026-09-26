.class final Lcom/google/zxing/oned/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXTENSION_START_PATTERN:[I


# instance fields
.field private final fiveSupport:Lcom/google/zxing/oned/r;

.field private final twoSupport:Lcom/google/zxing/oned/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/s;->EXTENSION_START_PATTERN:[I

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lcom/google/zxing/oned/q;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Lcom/google/zxing/oned/q;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/zxing/oned/s;->twoSupport:Lcom/google/zxing/oned/q;

    .line 11
    .line 12
    new-instance v0, Lcom/google/zxing/oned/r;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Lcom/google/zxing/oned/r;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/zxing/oned/s;->fiveSupport:Lcom/google/zxing/oned/r;

    .line 18
    return-void
.end method
