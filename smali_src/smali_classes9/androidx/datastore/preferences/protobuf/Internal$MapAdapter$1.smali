.class final Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$Converter<",
        "Ljava/lang/Integer;",
        "Landroidx/datastore/preferences/protobuf/Internal$EnumLite;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$enumMap:Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;

.field final synthetic val$unrecognizedValue:Landroidx/datastore/preferences/protobuf/Internal$EnumLite;


# virtual methods
.method public a(Landroidx/datastore/preferences/protobuf/Internal$EnumLite;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/Internal$EnumLite;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/Internal$EnumLite;->getNumber()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(Ljava/lang/Integer;)Landroidx/datastore/preferences/protobuf/Internal$EnumLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Landroidx/datastore/preferences/protobuf/Internal$EnumLite;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$1;->val$enumMap:Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result p1

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Landroidx/datastore/preferences/protobuf/Internal$EnumLite;

    .line 10
    move-result-object p1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$1;->val$unrecognizedValue:Landroidx/datastore/preferences/protobuf/Internal$EnumLite;

    .line 15
    :cond_0
    return-object p1
.end method

.method public bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/datastore/preferences/protobuf/Internal$EnumLite;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$1;->a(Landroidx/datastore/preferences/protobuf/Internal$EnumLite;)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/Internal$MapAdapter$1;->b(Ljava/lang/Integer;)Landroidx/datastore/preferences/protobuf/Internal$EnumLite;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
