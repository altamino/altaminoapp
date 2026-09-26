.class public abstract Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fasterxml/jackson/databind/util/Named;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public couldDeserialize()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public couldSerialize()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public findObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public findReferenceType()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public findViews()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public abstract getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
.end method

.method public abstract getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
.end method

.method public abstract getFullName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method

.method public abstract getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method

.method public abstract getInternalName()Ljava/lang/String;
.end method

.method public abstract getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;
.end method

.method public abstract getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNonConstructorMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.end method

.method public getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.end method

.method public abstract getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;
.end method

.method public abstract hasConstructorParameter()Z
.end method

.method public abstract hasField()Z
.end method

.method public abstract hasGetter()Z
.end method

.method public abstract hasSetter()Z
.end method

.method public abstract isExplicitlyIncluded()Z
.end method

.method public final isRequired()Z
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->isRequired()Z

    .line 10
    move-result v0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public isTypeId()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract withName(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.end method

.method public withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    move-result-object p1

    return-object p1
.end method

.method public abstract withSimpleName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
.end method
