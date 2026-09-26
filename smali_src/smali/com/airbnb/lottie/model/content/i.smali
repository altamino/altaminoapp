.class public Lcom/airbnb/lottie/model/content/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/i$b;,
        Lcom/airbnb/lottie/model/content/i$c;
    }
.end annotation


# instance fields
.field private final innerRadius:Lcom/airbnb/lottie/model/animatable/b;

.field private final innerRoundedness:Lcom/airbnb/lottie/model/animatable/b;

.field private final name:Ljava/lang/String;

.field private final outerRadius:Lcom/airbnb/lottie/model/animatable/b;

.field private final outerRoundedness:Lcom/airbnb/lottie/model/animatable/b;

.field private final points:Lcom/airbnb/lottie/model/animatable/b;

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

.field private final type:Lcom/airbnb/lottie/model/content/i$c;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/i$c;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/i$c;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Lcom/airbnb/lottie/model/animatable/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/i;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/i;->type:Lcom/airbnb/lottie/model/content/i$c;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/i;->points:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/i;->position:Lcom/airbnb/lottie/model/animatable/m;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/i;->rotation:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/i;->innerRadius:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/i;->outerRadius:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p8, p0, Lcom/airbnb/lottie/model/content/i;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p9, p0, Lcom/airbnb/lottie/model/content/i;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/i$c;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/i$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/airbnb/lottie/model/content/i;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/i$c;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Lcom/airbnb/lottie/animation/content/b;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/animation/content/l;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/l;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/i;)V

    .line 6
    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/i;->innerRadius:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/i;->innerRoundedness:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/i;->name:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/i;->outerRadius:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public f()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/i;->outerRoundedness:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public g()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/i;->points:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public h()Lcom/airbnb/lottie/model/animatable/m;
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
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/i;->position:Lcom/airbnb/lottie/model/animatable/m;

    return-object v0
.end method

.method public i()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/i;->rotation:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public j()Lcom/airbnb/lottie/model/content/i$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/i;->type:Lcom/airbnb/lottie/model/content/i$c;

    return-object v0
.end method
