.class public Lcom/airbnb/lottie/model/content/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/p$b;,
        Lcom/airbnb/lottie/model/content/p$d;,
        Lcom/airbnb/lottie/model/content/p$c;
    }
.end annotation


# instance fields
.field private final capType:Lcom/airbnb/lottie/model/content/p$c;

.field private final color:Lcom/airbnb/lottie/model/animatable/a;

.field private final joinType:Lcom/airbnb/lottie/model/content/p$d;

.field private final lineDashPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/model/animatable/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final opacity:Lcom/airbnb/lottie/model/animatable/d;

.field private final width:Lcom/airbnb/lottie/model/animatable/b;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/b;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/p$c;Lcom/airbnb/lottie/model/content/p$d;)V
    .locals 0
    .param p2    # Lcom/airbnb/lottie/model/animatable/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/a;",
            "Lcom/airbnb/lottie/model/animatable/d;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Lcom/airbnb/lottie/model/content/p$c;",
            "Lcom/airbnb/lottie/model/content/p$d;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/p;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/p;->offset:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/p;->lineDashPattern:Ljava/util/List;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/p;->color:Lcom/airbnb/lottie/model/animatable/a;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/p;->opacity:Lcom/airbnb/lottie/model/animatable/d;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/p;->width:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/p;->capType:Lcom/airbnb/lottie/model/content/p$c;

    iput-object p8, p0, Lcom/airbnb/lottie/model/content/p;->joinType:Lcom/airbnb/lottie/model/content/p$d;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/b;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/p$c;Lcom/airbnb/lottie/model/content/p$d;Lcom/airbnb/lottie/model/content/p$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/airbnb/lottie/model/content/p;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/b;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/a;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/p$c;Lcom/airbnb/lottie/model/content/p$d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Lcom/airbnb/lottie/animation/content/b;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/animation/content/p;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/p;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/p;)V

    .line 6
    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/content/p$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/p;->capType:Lcom/airbnb/lottie/model/content/p$c;

    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/animatable/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/p;->color:Lcom/airbnb/lottie/model/animatable/a;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/p;->offset:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/content/p$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/p;->joinType:Lcom/airbnb/lottie/model/content/p$d;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/p;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/p;->name:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/airbnb/lottie/model/animatable/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/p;->opacity:Lcom/airbnb/lottie/model/animatable/d;

    return-object v0
.end method

.method public i()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/p;->width:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method
