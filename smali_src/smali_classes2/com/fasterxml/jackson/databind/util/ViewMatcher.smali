.class public abstract Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;,
        Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;,
        Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static construct([Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/ViewMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/util/ViewMatcher;"
        }
    .end annotation

    .line 1
    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;->instance:Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;

    .line 5
    return-object p0

    .line 6
    :cond_0
    array-length v0, p0

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    const/4 v1, 0x1

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;-><init>([Ljava/lang/Class;)V

    .line 17
    return-object v0

    .line 18
    .line 19
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;

    .line 20
    const/4 v1, 0x0

    .line 21
    .line 22
    aget-object p0, p0, v1

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Single;-><init>(Ljava/lang/Class;)V

    .line 26
    return-object v0

    .line 27
    .line 28
    :cond_2
    sget-object p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;->instance:Lcom/fasterxml/jackson/databind/util/ViewMatcher$Empty;

    .line 29
    return-object p0
.end method


# virtual methods
.method public abstract isVisibleForView(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method
