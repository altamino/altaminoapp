.class public abstract Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;
.super Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.source "SourceFile"


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector$1;-><init>()V

    .line 6
    .line 7
    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;->instance:Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lcom/fasterxml/jackson/core/Version;->unknownVersion()Lcom/fasterxml/jackson/core/Version;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
