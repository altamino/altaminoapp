.class public Lcom/airbnb/lottie/model/animatable/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/animatable/l$b;
    }
.end annotation


# instance fields
.field private final anchorPoint:Lcom/airbnb/lottie/model/animatable/e;

.field private final endOpacity:Lcom/airbnb/lottie/model/animatable/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/airbnb/lottie/model/animatable/d;

.field private final position:Lcom/airbnb/lottie/model/animatable/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/model/animatable/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final rotation:Lcom/airbnb/lottie/model/animatable/b;

.field private final scale:Lcom/airbnb/lottie/model/animatable/g;

.field private final startOpacity:Lcom/airbnb/lottie/model/animatable/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/model/animatable/e;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/g;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V
    .locals 0
    .param p6    # Lcom/airbnb/lottie/model/animatable/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/airbnb/lottie/model/animatable/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/animatable/e;",
            "Lcom/airbnb/lottie/model/animatable/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/g;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Lcom/airbnb/lottie/model/animatable/d;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/l;->anchorPoint:Lcom/airbnb/lottie/model/animatable/e;

    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/l;->position:Lcom/airbnb/lottie/model/animatable/m;

    iput-object p3, p0, Lcom/airbnb/lottie/model/animatable/l;->scale:Lcom/airbnb/lottie/model/animatable/g;

    iput-object p4, p0, Lcom/airbnb/lottie/model/animatable/l;->rotation:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p5, p0, Lcom/airbnb/lottie/model/animatable/l;->opacity:Lcom/airbnb/lottie/model/animatable/d;

    iput-object p6, p0, Lcom/airbnb/lottie/model/animatable/l;->startOpacity:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p7, p0, Lcom/airbnb/lottie/model/animatable/l;->endOpacity:Lcom/airbnb/lottie/model/animatable/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/model/animatable/e;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/g;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/l$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/airbnb/lottie/model/animatable/l;-><init>(Lcom/airbnb/lottie/model/animatable/e;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/g;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Lcom/airbnb/lottie/animation/content/b;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lcom/airbnb/lottie/animation/keyframe/p;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/animation/keyframe/p;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/airbnb/lottie/animation/keyframe/p;-><init>(Lcom/airbnb/lottie/model/animatable/l;)V

    .line 6
    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/animatable/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/l;->anchorPoint:Lcom/airbnb/lottie/model/animatable/e;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/l;->endOpacity:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/animatable/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/l;->opacity:Lcom/airbnb/lottie/model/animatable/d;

    return-object v0
.end method

.method public f()Lcom/airbnb/lottie/model/animatable/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/lottie/model/animatable/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/l;->position:Lcom/airbnb/lottie/model/animatable/m;

    return-object v0
.end method

.method public g()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/l;->rotation:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public h()Lcom/airbnb/lottie/model/animatable/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/l;->scale:Lcom/airbnb/lottie/model/animatable/g;

    return-object v0
.end method

.method public i()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/l;->startOpacity:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method
