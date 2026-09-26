.class public final Lj4/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-object v0, p0, Lj4/c$b;->properties:Ljava/util/Map;

    .line 7
    .line 8
    iput-object p1, p0, Lj4/c$b;->name:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public a()Lj4/c;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lj4/c;

    .line 3
    .line 4
    iget-object v1, p0, Lj4/c$b;->name:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v2, p0, Lj4/c$b;->properties:Ljava/util/Map;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 12
    move-result-object v2

    .line 13
    goto :goto_0

    .line 14
    .line 15
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v3, p0, Lj4/c$b;->properties:Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 24
    move-result-object v2

    .line 25
    :goto_0
    const/4 v3, 0x0

    .line 26
    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3}, Lj4/c;-><init>(Ljava/lang/String;Ljava/util/Map;Lj4/c$a;)V

    .line 29
    return-object v0
.end method

.method public b(Ljava/lang/annotation/Annotation;)Lj4/c$b;
    .locals 2
    .param p1    # Ljava/lang/annotation/Annotation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(TT;)",
            "Lj4/c$b;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lj4/c$b;->properties:Ljava/util/Map;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    iput-object v0, p0, Lj4/c$b;->properties:Ljava/util/Map;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lj4/c$b;->properties:Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object p0
.end method
