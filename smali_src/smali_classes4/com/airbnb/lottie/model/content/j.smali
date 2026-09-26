.class public Lcom/airbnb/lottie/model/content/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/j$b;
    }
.end annotation


# instance fields
.field private final cornerRadius:Lcom/airbnb/lottie/model/animatable/b;

.field private final name:Ljava/lang/String;

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

.field private final size:Lcom/airbnb/lottie/model/animatable/f;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/lottie/model/animatable/m<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/f;",
            "Lcom/airbnb/lottie/model/animatable/b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/j;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/j;->position:Lcom/airbnb/lottie/model/animatable/m;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/j;->size:Lcom/airbnb/lottie/model/animatable/f;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/j;->cornerRadius:Lcom/airbnb/lottie/model/animatable/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/model/content/j;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/m;Lcom/airbnb/lottie/model/animatable/f;Lcom/airbnb/lottie/model/animatable/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Lcom/airbnb/lottie/animation/content/b;
    .locals 1

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/animation/content/m;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/m;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/j;)V

    .line 6
    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/j;->cornerRadius:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/j;->name:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/animatable/m;
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
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/j;->position:Lcom/airbnb/lottie/model/animatable/m;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/animatable/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/j;->size:Lcom/airbnb/lottie/model/animatable/f;

    return-object v0
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
    const-string v1, "RectangleShape{cornerRadius="

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/j;->cornerRadius:Lcom/airbnb/lottie/model/animatable/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/b;->e()Ljava/lang/Float;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v1, ", position="

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/j;->position:Lcom/airbnb/lottie/model/animatable/m;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, ", size="

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/j;->size:Lcom/airbnb/lottie/model/animatable/f;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const/16 v1, 0x7d

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
