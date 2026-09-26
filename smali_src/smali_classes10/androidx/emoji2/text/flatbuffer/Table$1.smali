.class Landroidx/emoji2/text/flatbuffer/Table$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/emoji2/text/flatbuffer/Table;

.field final synthetic val$bb:Ljava/nio/ByteBuffer;


# virtual methods
.method public a(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Table$1;->this$0:Landroidx/emoji2/text/flatbuffer/Table;

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/emoji2/text/flatbuffer/Table$1;->val$bb:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, v1}, Landroidx/emoji2/text/flatbuffer/Table;->f(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/nio/ByteBuffer;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Integer;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/Table$1;->a(Ljava/lang/Integer;Ljava/lang/Integer;)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method
