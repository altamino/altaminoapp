.class final Landroidx/datastore/preferences/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/FieldInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/datastore/preferences/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final cachedSizeField:Ljava/lang/reflect/Field;

.field private final enforceUtf8:Z

.field private final enumVerifier:Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

.field private final field:Ljava/lang/reflect/Field;

.field private final fieldNumber:I

.field private final mapDefaultEntry:Ljava/lang/Object;

.field private final messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final oneof:Landroidx/datastore/preferences/protobuf/OneofInfo;

.field private final oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final presenceField:Ljava/lang/reflect/Field;

.field private final presenceMask:I

.field private final required:Z

.field private final type:Landroidx/datastore/preferences/protobuf/FieldType;


# virtual methods
.method public a(Landroidx/datastore/preferences/protobuf/FieldInfo;)I
    .locals 1

    .line 1
    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->fieldNumber:I

    .line 3
    .line 4
    iget p1, p1, Landroidx/datastore/preferences/protobuf/FieldInfo;->fieldNumber:I

    .line 5
    sub-int/2addr v0, p1

    .line 6
    return v0
.end method

.method public b()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public c()Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->enumVerifier:Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    .line 2
    check-cast p1, Landroidx/datastore/preferences/protobuf/FieldInfo;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/FieldInfo;->a(Landroidx/datastore/preferences/protobuf/FieldInfo;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public d()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->fieldNumber:I

    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public h()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    .line 3
    .line 4
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->type:Landroidx/datastore/preferences/protobuf/FieldType;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result v1

    .line 9
    .line 10
    aget v0, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    const/4 v1, 0x2

    .line 15
    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 v1, 0x3

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    const/4 v1, 0x4

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 24
    return-object v0

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    .line 27
    return-object v0

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    .line 39
    :goto_0
    return-object v0
.end method

.method public i()Landroidx/datastore/preferences/protobuf/OneofInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->oneof:Landroidx/datastore/preferences/protobuf/OneofInfo;

    return-object v0
.end method

.method public j()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->presenceMask:I

    return v0
.end method

.method public l()Landroidx/datastore/preferences/protobuf/FieldType;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->type:Landroidx/datastore/preferences/protobuf/FieldType;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->enforceUtf8:Z

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/FieldInfo;->required:Z

    return v0
.end method
