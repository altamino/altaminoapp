.class public Lcom/airbnb/lottie/animation/keyframe/l;
.super Lcom/airbnb/lottie/animation/keyframe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/a<",
        "Lcom/airbnb/lottie/model/content/l;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempPath:Landroid/graphics/Path;

.field private final tempShapeData:Lcom/airbnb/lottie/model/content/l;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/content/l;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/a;-><init>(Ljava/util/List;)V

    .line 4
    .line 5
    new-instance p1, Lcom/airbnb/lottie/model/content/l;

    .line 6
    .line 7
    .line 8
    invoke-direct {p1}, Lcom/airbnb/lottie/model/content/l;-><init>()V

    .line 9
    .line 10
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/l;->tempShapeData:Lcom/airbnb/lottie/model/content/l;

    .line 11
    .line 12
    new-instance p1, Landroid/graphics/Path;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 16
    .line 17
    iput-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/l;->tempPath:Landroid/graphics/Path;

    .line 18
    return-void
.end method


# virtual methods
.method public bridge synthetic h(Lh0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/l;->k(Lh0/a;F)Landroid/graphics/Path;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lh0/a;F)Landroid/graphics/Path;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/a<",
            "Lcom/airbnb/lottie/model/content/l;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .line 1
    .line 2
    iget-object v0, p1, Lh0/a;->startValue:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, Lcom/airbnb/lottie/model/content/l;

    .line 5
    .line 6
    iget-object p1, p1, Lh0/a;->endValue:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Lcom/airbnb/lottie/model/content/l;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/airbnb/lottie/animation/keyframe/l;->tempShapeData:Lcom/airbnb/lottie/model/content/l;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0, p1, p2}, Lcom/airbnb/lottie/model/content/l;->c(Lcom/airbnb/lottie/model/content/l;Lcom/airbnb/lottie/model/content/l;F)V

    .line 14
    .line 15
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/l;->tempShapeData:Lcom/airbnb/lottie/model/content/l;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/airbnb/lottie/animation/keyframe/l;->tempPath:Landroid/graphics/Path;

    .line 18
    .line 19
    .line 20
    invoke-static {p1, p2}, Lcom/airbnb/lottie/utils/e;->f(Lcom/airbnb/lottie/model/content/l;Landroid/graphics/Path;)V

    .line 21
    .line 22
    iget-object p1, p0, Lcom/airbnb/lottie/animation/keyframe/l;->tempPath:Landroid/graphics/Path;

    .line 23
    return-object p1
.end method
