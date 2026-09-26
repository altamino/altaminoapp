.class final Lcom/google/common/collect/i0$c;
.super Lcom/google/common/collect/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final EMPTY:Lcom/google/common/collect/m1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m1<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final offset:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    .line 2
    new-instance v0, Lcom/google/common/collect/i0$c;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/common/collect/i0$c;-><init>([Ljava/lang/Object;III)V

    .line 9
    .line 10
    sput-object v0, Lcom/google/common/collect/i0$c;->EMPTY:Lcom/google/common/collect/m1;

    .line 11
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p3, p4}, Lcom/google/common/collect/a;-><init>(II)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/google/common/collect/i0$c;->array:[Ljava/lang/Object;

    .line 6
    .line 7
    iput p2, p0, Lcom/google/common/collect/i0$c;->offset:I

    .line 8
    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/google/common/collect/i0$c;->array:[Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Lcom/google/common/collect/i0$c;->offset:I

    .line 5
    add-int/2addr v1, p1

    .line 6
    .line 7
    aget-object p1, v0, v1

    .line 8
    return-object p1
.end method
