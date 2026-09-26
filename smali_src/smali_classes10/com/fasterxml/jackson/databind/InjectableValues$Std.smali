.class public Lcom/fasterxml/jackson/databind/InjectableValues$Std;
.super Lcom/fasterxml/jackson/databind/InjectableValues;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/InjectableValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Std"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/InjectableValues$Std;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/InjectableValues;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/InjectableValues$Std;->_values:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/Class;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/InjectableValues$Std;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/InjectableValues$Std;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/InjectableValues$Std;->_values:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/InjectableValues$Std;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/InjectableValues$Std;->_values:Ljava/util/Map;

    .line 1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public findInjectableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    .line 2
    instance-of p2, p1, Ljava/lang/String;

    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const-string p1, "[null]"

    .line 9
    goto :goto_0

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    move-result-object p1

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    .line 19
    :goto_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    const-string p4, "Unrecognized inject value id type ("

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p1, "), expecting String"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    .line 44
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p2

    .line 46
    .line 47
    :cond_1
    check-cast p1, Ljava/lang/String;

    .line 48
    .line 49
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/InjectableValues$Std;->_values:Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-result-object p2

    .line 54
    .line 55
    if-nez p2, :cond_3

    .line 56
    .line 57
    iget-object p4, p0, Lcom/fasterxml/jackson/databind/InjectableValues$Std;->_values:Ljava/util/Map;

    .line 58
    .line 59
    .line 60
    invoke-interface {p4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 61
    move-result p4

    .line 62
    .line 63
    if-eqz p4, :cond_2

    .line 64
    goto :goto_1

    .line 65
    .line 66
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance p4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    const-string v0, "No injectable id with value \'"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string p1, "\' found (for property \'"

    .line 82
    .line 83
    .line 84
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-interface {p3}, Lcom/fasterxml/jackson/databind/BeanProperty;->getName()Ljava/lang/String;

    .line 88
    move-result-object p1

    .line 89
    .line 90
    .line 91
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string p1, "\')"

    .line 94
    .line 95
    .line 96
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    .line 102
    .line 103
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p2

    .line 105
    :cond_3
    :goto_1
    return-object p2
.end method
