.class final Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;
.super Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MultiView"
.end annotation


# instance fields
.field protected final _delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

.field protected final _views:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    .line 8
    return-void
.end method


# virtual methods
.method public assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 6
    return-void
.end method

.method public assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 6
    return-void
.end method

.method public bridge synthetic rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;

    move-result-object p1

    return-object p1
.end method

.method public rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;
    .locals 2

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->rename(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object p1

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)V

    return-object v0
.end method

.method public serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    .line 9
    array-length v1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    .line 15
    .line 16
    aget-object v3, v3, v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    :goto_1
    if-ne v2, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsPlaceholder(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 34
    return-void

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsElement(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 40
    return-void
.end method

.method public serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getActiveView()Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    .line 9
    array-length v1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    .line 14
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_views:[Ljava/lang/Class;

    .line 15
    .line 16
    aget-object v3, v3, v2

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 20
    move-result v3

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    goto :goto_1

    .line 24
    .line 25
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 27
    .line 28
    :cond_1
    :goto_1
    if-ne v2, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsOmittedField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 34
    return-void

    .line 35
    .line 36
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;->_delegate:Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->serializeAsField(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 40
    return-void
.end method
