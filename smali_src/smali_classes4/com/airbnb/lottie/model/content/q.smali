.class public Lcom/airbnb/lottie/model/content/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/q$b;,
        Lcom/airbnb/lottie/model/content/q$c;
    }
.end annotation


# instance fields
.field private final end:Lcom/airbnb/lottie/model/animatable/b;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/model/animatable/b;

.field private final start:Lcom/airbnb/lottie/model/animatable/b;

.field private final type:Lcom/airbnb/lottie/model/content/q$c;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/q$c;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/q;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/model/content/q;->type:Lcom/airbnb/lottie/model/content/q$c;

    iput-object p3, p0, Lcom/airbnb/lottie/model/content/q;->start:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p4, p0, Lcom/airbnb/lottie/model/content/q;->end:Lcom/airbnb/lottie/model/animatable/b;

    iput-object p5, p0, Lcom/airbnb/lottie/model/content/q;->offset:Lcom/airbnb/lottie/model/animatable/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/q$c;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/content/q$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/lottie/model/content/q;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/q$c;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Lcom/airbnb/lottie/animation/content/b;
    .locals 0

    .line 1
    .line 2
    new-instance p1, Lcom/airbnb/lottie/animation/content/q;

    .line 3
    .line 4
    .line 5
    invoke-direct {p1, p2, p0}, Lcom/airbnb/lottie/animation/content/q;-><init>(Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/q;)V

    .line 6
    return-object p1
.end method

.method public b()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/q;->end:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/q;->name:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/q;->offset:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/q;->start:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public f()Lcom/airbnb/lottie/model/content/q$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/q;->type:Lcom/airbnb/lottie/model/content/q$c;

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
    const-string v1, "Trim Path: {start: "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/q;->start:Lcom/airbnb/lottie/model/animatable/b;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v1, ", end: "

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/q;->end:Lcom/airbnb/lottie/model/animatable/b;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, ", offset: "

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/airbnb/lottie/model/content/q;->offset:Lcom/airbnb/lottie/model/animatable/b;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "}"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method
