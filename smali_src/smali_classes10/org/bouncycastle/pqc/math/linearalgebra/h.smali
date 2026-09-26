.class public abstract Lorg/bouncycastle/pqc/math/linearalgebra/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MATRIX_TYPE_RANDOM_LT:C = 'L'

.field public static final MATRIX_TYPE_RANDOM_REGULAR:C = 'R'

.field public static final MATRIX_TYPE_RANDOM_UT:C = 'U'

.field public static final MATRIX_TYPE_UNIT:C = 'I'

.field public static final MATRIX_TYPE_ZERO:C = 'Z'


# instance fields
.field protected numColumns:I

.field protected numRows:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numColumns:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/h;->numRows:I

    return v0
.end method
