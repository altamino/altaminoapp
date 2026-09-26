.class public Lcom/airbnb/lottie/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/i$b;
    }
.end annotation


# instance fields
.field private enabled:Z

.field private final floatComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/core/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final frameListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private layerRenderTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/utils/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/airbnb/lottie/i;->enabled:Z

    .line 7
    .line 8
    new-instance v0, Landroidx/collection/ArraySet;

    .line 9
    .line 10
    .line 11
    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 12
    .line 13
    iput-object v0, p0, Lcom/airbnb/lottie/i;->frameListeners:Ljava/util/Set;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    iput-object v0, p0, Lcom/airbnb/lottie/i;->layerRenderTimes:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Lcom/airbnb/lottie/i$a;

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/i$a;-><init>(Lcom/airbnb/lottie/i;)V

    .line 26
    .line 27
    iput-object v0, p0, Lcom/airbnb/lottie/i;->floatComparator:Ljava/util/Comparator;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;F)V
    .locals 2

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/airbnb/lottie/i;->enabled:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/i;->layerRenderTimes:Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    check-cast v0, Lcom/airbnb/lottie/utils/d;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/airbnb/lottie/utils/d;

    .line 18
    .line 19
    .line 20
    invoke-direct {v0}, Lcom/airbnb/lottie/utils/d;-><init>()V

    .line 21
    .line 22
    iget-object v1, p0, Lcom/airbnb/lottie/i;->layerRenderTimes:Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {v0, p2}, Lcom/airbnb/lottie/utils/d;->a(F)V

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "root"

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Lcom/airbnb/lottie/i;->frameListeners:Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    .line 55
    check-cast v0, Lcom/airbnb/lottie/i$b;

    .line 56
    .line 57
    .line 58
    invoke-interface {v0, p2}, Lcom/airbnb/lottie/i$b;->a(F)V

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method

.method b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/i;->enabled:Z

    return-void
.end method
