.class final Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;
.super Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ViewMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Multi"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _views:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ViewMatcher;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;->_views:[Ljava/lang/Class;

    .line 6
    return-void
.end method


# virtual methods
.method public isVisibleForView(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;->_views:[Ljava/lang/Class;

    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    .line 7
    :goto_0
    if-ge v2, v0, :cond_2

    .line 8
    .line 9
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/ViewMatcher$Multi;->_views:[Ljava/lang/Class;

    .line 10
    .line 11
    aget-object v3, v3, v2

    .line 12
    .line 13
    if-eq p1, v3, :cond_1

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    goto :goto_1

    .line 21
    .line 22
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    const/4 p1, 0x1

    .line 25
    return p1

    .line 26
    :cond_2
    return v1
.end method
