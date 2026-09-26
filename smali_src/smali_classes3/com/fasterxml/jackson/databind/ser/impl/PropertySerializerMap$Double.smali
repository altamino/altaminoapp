.class final Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;
.super Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Double"
.end annotation


# instance fields
.field private final _serializer1:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _serializer2:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _type1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final _type2:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer1:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer2:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 12
    return-void
.end method


# virtual methods
.method public newWith(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x2

    .line 2
    .line 3
    new-array p1, p1, [Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 4
    .line 5
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer1:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 10
    .line 11
    .line 12
    invoke-direct {p2, v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    .line 15
    aput-object p2, p1, v0

    .line 16
    .line 17
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer2:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 25
    const/4 v0, 0x1

    .line 26
    .line 27
    aput-object p2, p1, v0

    .line 28
    .line 29
    new-instance p2, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;

    .line 30
    .line 31
    .line 32
    invoke-direct {p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Multi;-><init>([Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$TypeAndSerializer;)V

    .line 33
    return-object p2
.end method

.method public serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type1:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer1:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_type2:Ljava/lang/Class;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$Double;->_serializer2:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
