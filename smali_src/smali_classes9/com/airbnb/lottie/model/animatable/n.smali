.class public Lcom/airbnb/lottie/model/animatable/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/n$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final composition:Lcom/airbnb/lottie/e;

.field private final json:Lorg/json/JSONObject;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final scale:F

.field private final valueFactory:Lcom/airbnb/lottie/model/animatable/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/animatable/m$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/json/JSONObject;FLcom/airbnb/lottie/e;Lcom/airbnb/lottie/model/animatable/m$a;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "F",
            "Lcom/airbnb/lottie/e;",
            "Lcom/airbnb/lottie/model/animatable/m$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/n;->json:Lorg/json/JSONObject;

    .line 6
    .line 7
    iput p2, p0, Lcom/airbnb/lottie/model/animatable/n;->scale:F

    .line 8
    .line 9
    iput-object p3, p0, Lcom/airbnb/lottie/model/animatable/n;->composition:Lcom/airbnb/lottie/e;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/airbnb/lottie/model/animatable/n;->valueFactory:Lcom/airbnb/lottie/model/animatable/m$a;

    .line 12
    return-void
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p0, Lorg/json/JSONArray;

    .line 3
    const/4 v1, 0x0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    .line 8
    :cond_0
    check-cast p0, Lorg/json/JSONArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    .line 14
    instance-of v0, p0, Lorg/json/JSONObject;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p0, Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "t"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    move-result p0

    .line 26
    .line 27
    if-eqz p0, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1
    return v1
.end method

.method static b(Lorg/json/JSONObject;FLcom/airbnb/lottie/e;Lcom/airbnb/lottie/model/animatable/m$a;)Lcom/airbnb/lottie/model/animatable/n;
    .locals 1
    .param p0    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "F",
            "Lcom/airbnb/lottie/e;",
            "Lcom/airbnb/lottie/model/animatable/m$a<",
            "TT;>;)",
            "Lcom/airbnb/lottie/model/animatable/n<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/model/animatable/n;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/airbnb/lottie/model/animatable/n;-><init>(Lorg/json/JSONObject;FLcom/airbnb/lottie/e;Lcom/airbnb/lottie/model/animatable/m$a;)V

    .line 6
    return-object v0
.end method

.method private c(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/a<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/n;->json:Lorg/json/JSONObject;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    .line 17
    check-cast p1, Lh0/a;

    .line 18
    .line 19
    iget-object p1, p1, Lh0/a;->startValue:Ljava/lang/Object;

    .line 20
    return-object p1

    .line 21
    .line 22
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/model/animatable/n;->valueFactory:Lcom/airbnb/lottie/model/animatable/m$a;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/n;->json:Lorg/json/JSONObject;

    .line 25
    .line 26
    const-string v1, "k"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    .line 32
    iget v1, p0, Lcom/airbnb/lottie/model/animatable/n;->scale:F

    .line 33
    .line 34
    .line 35
    invoke-interface {p1, v0, v1}, Lcom/airbnb/lottie/model/animatable/m$a;->a(Ljava/lang/Object;F)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method

.method private e()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh0/a<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/n;->json:Lorg/json/JSONObject;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-string v1, "k"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/airbnb/lottie/model/animatable/n;->a(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    check-cast v0, Lorg/json/JSONArray;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/n;->composition:Lcom/airbnb/lottie/e;

    .line 21
    .line 22
    iget v2, p0, Lcom/airbnb/lottie/model/animatable/n;->scale:F

    .line 23
    .line 24
    iget-object v3, p0, Lcom/airbnb/lottie/model/animatable/n;->valueFactory:Lcom/airbnb/lottie/model/animatable/m$a;

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3}, Lh0/a$a;->c(Lorg/json/JSONArray;Lcom/airbnb/lottie/e;FLcom/airbnb/lottie/model/animatable/m$a;)Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 33
    move-result-object v0

    .line 34
    return-object v0

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method


# virtual methods
.method d()Lcom/airbnb/lottie/model/animatable/n$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/model/animatable/n$a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/airbnb/lottie/model/animatable/n;->e()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, v0}, Lcom/airbnb/lottie/model/animatable/n;->c(Ljava/util/List;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    new-instance v2, Lcom/airbnb/lottie/model/animatable/n$a;

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v0, v1}, Lcom/airbnb/lottie/model/animatable/n$a;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 14
    return-object v2
.end method
