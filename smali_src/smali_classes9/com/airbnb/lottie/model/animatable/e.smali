.class public Lcom/airbnb/lottie/model/animatable/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/m<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private initialPoint:Landroid/graphics/PointF;

.field private final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/animation/keyframe/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/e;->keyframes:Ljava/util/List;

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/e;->initialPoint:Landroid/graphics/PointF;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lcom/airbnb/lottie/e;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/animatable/e;->keyframes:Ljava/util/List;

    .line 6
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/animatable/e;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lorg/json/JSONArray;

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 10
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/e$a;->b()Lcom/airbnb/lottie/model/animatable/m$a;

    move-result-object v3

    .line 11
    invoke-static {v2, p2, v3}, Lcom/airbnb/lottie/animation/keyframe/h$b;->a(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;Lcom/airbnb/lottie/model/animatable/m$a;)Lcom/airbnb/lottie/animation/keyframe/h;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/model/animatable/e;->keyframes:Ljava/util/List;

    .line 12
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/model/animatable/e;->keyframes:Ljava/util/List;

    .line 13
    invoke-static {p1}, Lh0/a;->f(Ljava/util/List;)V

    goto :goto_1

    .line 14
    :cond_1
    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p2}, Lcom/airbnb/lottie/e;->j()F

    move-result p2

    invoke-static {p1, p2}, Lcom/airbnb/lottie/utils/b;->a(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/e;->initialPoint:Landroid/graphics/PointF;

    :goto_1
    return-void
.end method

.method public static b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/e;",
            ")",
            "Lcom/airbnb/lottie/model/animatable/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    const-string v0, "k"

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/airbnb/lottie/model/animatable/e;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/model/animatable/e;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/e;)V

    .line 18
    return-object v1

    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/model/animatable/i;

    .line 21
    .line 22
    .line 23
    const-string/jumbo v1, "x"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    move-result-object v1

    .line 28
    .line 29
    .line 30
    invoke-static {v1, p1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 31
    move-result-object v1

    .line 32
    .line 33
    .line 34
    const-string/jumbo v2, "y"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 38
    move-result-object p0

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Lcom/airbnb/lottie/model/animatable/b$b;->b(Lorg/json/JSONObject;Lcom/airbnb/lottie/e;)Lcom/airbnb/lottie/model/animatable/b;

    .line 42
    move-result-object p0

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v1, p0}, Lcom/airbnb/lottie/model/animatable/i;-><init>(Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V

    .line 46
    return-object v0
.end method

.method private d(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    .line 2
    instance-of v0, p1, Lorg/json/JSONArray;

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
    check-cast p1, Lorg/json/JSONArray;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 13
    .line 14
    instance-of v0, p1, Lorg/json/JSONObject;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "t"

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 25
    move-result p1

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    const/4 v1, 0x1

    .line 29
    :cond_1
    return v1
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/e;->c()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/n;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/e;->initialPoint:Landroid/graphics/PointF;

    .line 11
    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/n;-><init>(Ljava/lang/Object;)V

    .line 14
    return-object v0

    .line 15
    .line 16
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/i;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/e;->keyframes:Ljava/util/List;

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/i;-><init>(Ljava/util/List;)V

    .line 22
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/e;->keyframes:Ljava/util/List;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    .line 8
    xor-int/lit8 v0, v0, 0x1

    .line 9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "initialPoint="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/e;->initialPoint:Landroid/graphics/PointF;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
