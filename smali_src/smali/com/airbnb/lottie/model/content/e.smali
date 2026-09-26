.class public Lcom/airbnb/lottie/model/content/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/e$b;
    }
.end annotation


# instance fields
.field private final capType:Lcom/airbnb/lottie/model/content/p$c;

.field private final dashOffset:Lcom/airbnb/lottie/model/animatable/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final endPoint:Lcom/airbnb/lottie/model/animatable/f;

.field private final gradientColor:Lcom/airbnb/lottie/model/animatable/c;

.field private final gradientType:Lcom/airbnb/lottie/model/content/f;

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

.field private final opacity:Lcom/airbnb/lottie/model/animatable/d;

.field private final startPoint:Lcom/airbnb/lottie/model/animatable/f;

.field private final width:Lcom/airbnb/lottie/model/animatable/b;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/f;Lcom/airbnb/lottie/model/animatable/c;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/p$c;Lcom/airbnb/lottie/model/content/p$d;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/b;)V
    .locals 0
    .param p11    # Lcom/airbnb/lottie/model/animatable/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/content/f;",
            "Lcom/airbnb/lottie/model/animatable/c;",
            "Lcom/airbnb/lottie/model/animatable/d;",
            "Lcom/airbnb/lottie/model/animatable/f;",
            "Lcom/airbnb/lottie/model/animatable/f;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            "Lcom/airbnb/lottie/model/content/p$c;",
            "Lcom/airbnb/lottie/model/content/p$d;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/e;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/e;->gradientType:Lcom/airbnb/lottie/model/content/f;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/e;->gradientColor:Lcom/airbnb/lottie/model/animatable/c;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/e;->opacity:Lcom/airbnb/lottie/model/animatable/d;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/e;->startPoint:Lcom/airbnb/lottie/model/animatable/f;

    iput-object p6, p0, Lcom/airbnb/lottie/model/content/e;->endPoint:Lcom/airbnb/lottie/model/animatable/f;

    iput-object p7, p0, Lcom/airbnb/lottie/model/content/e;->width:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p8, p0, Lcom/airbnb/lottie/model/content/e;->capType:Lcom/airbnb/lottie/model/content/p$c;

    iput-object p9, p0, Lcom/airbnb/lottie/model/content/e;->joinType:Lcom/airbnb/lottie/model/content/p$d;

    iput-object p10, p0, Lcom/airbnb/lottie/model/content/e;->lineDashPattern:Ljava/util/List;

    iput-object p11, p0, Lcom/airbnb/lottie/model/content/e;->dashOffset:Lcom/airbnb/lottie/model/animatable/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/f;Lcom/airbnb/lottie/model/animatable/c;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/p$c;Lcom/airbnb/lottie/model/content/p$d;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/e$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/airbnb/lottie/model/content/e;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/f;Lcom/airbnb/lottie/model/animatable/c;Lcom/airbnb/lottie/model/animatable/d;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/p$c;Lcom/airbnb/lottie/model/content/p$d;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Lcom/airbnb/lottie/animation/content/b;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/animation/content/h;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/h;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/e;)V

    .line 6
    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/content/p$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->capType:Lcom/airbnb/lottie/model/content/p$c;

    return-object v0
.end method

.method public c()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->dashOffset:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/animatable/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->endPoint:Lcom/airbnb/lottie/model/animatable/f;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/animatable/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->gradientColor:Lcom/airbnb/lottie/model/animatable/c;

    return-object v0
.end method

.method public f()Lcom/airbnb/lottie/model/content/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->gradientType:Lcom/airbnb/lottie/model/content/f;

    return-object v0
.end method

.method public g()Lcom/airbnb/lottie/model/content/p$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->joinType:Lcom/airbnb/lottie/model/content/p$d;

    return-object v0
.end method

.method public h()Ljava/util/List;
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
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->lineDashPattern:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->name:Ljava/lang/String;

    return-object v0
.end method

.method public j()Lcom/airbnb/lottie/model/animatable/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->opacity:Lcom/airbnb/lottie/model/animatable/d;

    return-object v0
.end method

.method public k()Lcom/airbnb/lottie/model/animatable/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->startPoint:Lcom/airbnb/lottie/model/animatable/f;

    return-object v0
.end method

.method public l()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/e;->width:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method
