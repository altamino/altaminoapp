.class public Lcom/airbnb/lottie/animation/content/p;
.super Lcom/airbnb/lottie/animation/content/a;
.source "SourceFile"


# instance fields
.field private final colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/p;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/p;->b()Lcom/airbnb/lottie/model/content/p$c;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/p$c;->a()Landroid/graphics/Paint$Cap;

    .line 8
    move-result-object v4

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/p;->e()Lcom/airbnb/lottie/model/content/p$d;

    .line 12
    move-result-object v0

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/airbnb/lottie/model/content/p$d;->a()Landroid/graphics/Paint$Join;

    .line 16
    move-result-object v5

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/p;->h()Lcom/airbnb/lottie/model/animatable/d;

    .line 20
    move-result-object v6

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/p;->i()Lcom/airbnb/lottie/model/animatable/b;

    .line 24
    move-result-object v7

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/p;->f()Ljava/util/List;

    .line 28
    move-result-object v8

    .line 29
    .line 30
    .line 31
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/p;->d()Lcom/airbnb/lottie/model/animatable/b;

    .line 32
    move-result-object v9

    .line 33
    move-object v1, p0

    .line 34
    move-object v2, p1

    .line 35
    move-object v3, p2

    .line 36
    .line 37
    .line 38
    invoke-direct/range {v1 .. v9}, Lcom/airbnb/lottie/animation/content/a;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/b;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/p;->g()Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    .line 44
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/p;->name:Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/p;->c()Lcom/airbnb/lottie/model/animatable/a;

    .line 48
    move-result-object p1

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/animatable/a;->a()Lcom/airbnb/lottie/animation/keyframe/a;

    .line 52
    move-result-object p1

    .line 53
    .line 54
    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/p;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/animation/keyframe/a;->a(Lcom/airbnb/lottie/animation/keyframe/a$a;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lcom/airbnb/lottie/model/layer/a;->g(Lcom/airbnb/lottie/animation/keyframe/a;)V

    .line 61
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    iget-object p1, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    return-void
.end method

.method public d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/a;->paint:Landroid/graphics/Paint;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/p;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/a;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v1

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 21
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/p;->name:Ljava/lang/String;

    return-object v0
.end method
