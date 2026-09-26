.class public Lcom/airbnb/lottie/model/animatable/h;
.super Lcom/airbnb/lottie/model/animatable/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/model/animatable/o<",
        "Lcom/airbnb/lottie/model/content/l;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final convertTypePath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/content/l;",
            ">;>;",
            "Lcom/airbnb/lottie/model/content/l;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/o;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/h;->convertTypePath:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/l;Lcom/airbnb/lottie/model/animatable/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/animatable/h;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/content/l;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/airbnb/lottie/animation/keyframe/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Lcom/airbnb/lottie/model/content/l;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/model/animatable/o;->d()Z

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
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/o;->initialValue:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/airbnb/lottie/model/content/l;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/animatable/h;->e(Lcom/airbnb/lottie/model/content/l;)Landroid/graphics/Path;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/n;-><init>(Ljava/lang/Object;)V

    .line 20
    return-object v0

    .line 21
    .line 22
    :cond_0
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/l;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/o;->keyframes:Ljava/util/List;

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/animation/keyframe/l;-><init>(Ljava/util/List;)V

    .line 28
    return-object v0
.end method

.method bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    check-cast p1, Lcom/airbnb/lottie/model/content/l;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/model/animatable/h;->e(Lcom/airbnb/lottie/model/content/l;)Landroid/graphics/Path;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method e(Lcom/airbnb/lottie/model/content/l;)Landroid/graphics/Path;
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/h;->convertTypePath:Landroid/graphics/Path;

    .line 3
    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/h;->convertTypePath:Landroid/graphics/Path;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/airbnb/lottie/utils/e;->f(Lcom/airbnb/lottie/model/content/l;Landroid/graphics/Path;)V

    .line 11
    .line 12
    iget-object p1, p0, Lcom/airbnb/lottie/model/animatable/h;->convertTypePath:Landroid/graphics/Path;

    .line 13
    return-object p1
.end method
