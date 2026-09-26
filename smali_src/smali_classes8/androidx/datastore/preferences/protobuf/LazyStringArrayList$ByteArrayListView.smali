.class Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/LazyStringArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteArrayListView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "[B>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;


# virtual methods
.method public a(I[B)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->f(Landroidx/datastore/preferences/protobuf/LazyStringArrayList;I[B)V

    .line 6
    .line 7
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 12
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    .line 2
    check-cast p2, [B

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->a(I[B)V

    .line 6
    return-void
.end method

.method public c(I)[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->getByteArray(I)[B

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d(I)[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->y(I)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->e(Ljava/lang/Object;)[B

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public e(I[B)[B
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    .line 3
    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->d(Landroidx/datastore/preferences/protobuf/LazyStringArrayList;I[B)Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    .line 9
    .line 10
    add-int/lit8 p2, p2, 0x1

    .line 11
    .line 12
    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    .line 13
    .line 14
    .line 15
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->e(Ljava/lang/Object;)[B

    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->c(I)[B

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->d(I)[B

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p2, [B

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->e(I[B)[B

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/LazyStringArrayList$ByteArrayListView;->list:Landroidx/datastore/preferences/protobuf/LazyStringArrayList;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/LazyStringArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method
