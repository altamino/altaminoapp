.class final Landroidx/collection/ArrayMap$KeyIterator;
.super Landroidx/collection/IndexBasedArrayIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/collection/ArrayMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/IndexBasedArrayIterator<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/collection/ArrayMap;


# direct methods
.method constructor <init>(Landroidx/collection/ArrayMap;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    iget p1, p1, Landroidx/collection/SimpleArrayMap;->mSize:I

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/collection/IndexBasedArrayIterator;-><init>(I)V

    .line 8
    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->l(I)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected b(I)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/collection/ArrayMap$KeyIterator;->this$0:Landroidx/collection/ArrayMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->n(I)Ljava/lang/Object;

    .line 6
    return-void
.end method
