.class final Lcom/google/common/collect/x0$c;
.super Lcom/google/common/collect/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient offset:I

.field private final transient size:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/common/collect/a0;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/common/collect/x0$c;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/common/collect/x0$c;->offset:I

    .line 8
    .line 9
    iput p3, p0, Lcom/google/common/collect/x0$c;->size:I

    .line 10
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    .line 2
    iget v0, p0, Lcom/google/common/collect/x0$c;->size:I

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/google/common/base/o;->i(II)I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/common/collect/x0$c;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 8
    .line 9
    mul-int/lit8 p1, p1, 0x2

    .line 10
    .line 11
    iget v1, p0, Lcom/google/common/collect/x0$c;->offset:I

    .line 12
    add-int/2addr p1, v1

    .line 13
    .line 14
    aget-object p1, v0, p1

    .line 15
    .line 16
    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    return-object p1
.end method

.method j()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/x0$c;->size:I

    return v0
.end method
