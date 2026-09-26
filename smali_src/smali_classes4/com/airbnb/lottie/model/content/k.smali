.class public Lcom/airbnb/lottie/model/content/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/model/content/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/content/k$a;
    }
.end annotation


# instance fields
.field private final copies:Lcom/airbnb/lottie/model/animatable/b;

.field private final name:Ljava/lang/String;

.field private final offset:Lcom/airbnb/lottie/model/animatable/b;

.field private final transform:Lcom/airbnb/lottie/model/animatable/l;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/b;Lcom/airbnb/lottie/model/animatable/l;)V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lcom/airbnb/lottie/model/content/k;->name:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/airbnb/lottie/model/content/k;->copies:Lcom/airbnb/lottie/model/animatable/b;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/airbnb/lottie/model/content/k;->offset:Lcom/airbnb/lottie/model/animatable/b;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/airbnb/lottie/model/content/k;->transform:Lcom/airbnb/lottie/model/animatable/l;

    .line 12
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;)Lcom/airbnb/lottie/animation/content/b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    new-instance v0, Lcom/airbnb/lottie/animation/content/n;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0, p1, p2, p0}, Lcom/airbnb/lottie/animation/content/n;-><init>(Lcom/airbnb/lottie/f;Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/model/content/k;)V

    .line 6
    return-object v0
.end method

.method public b()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/k;->copies:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/k;->name:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/airbnb/lottie/model/animatable/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/k;->offset:Lcom/airbnb/lottie/model/animatable/b;

    return-object v0
.end method

.method public e()Lcom/airbnb/lottie/model/animatable/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/content/k;->transform:Lcom/airbnb/lottie/model/animatable/l;

    return-object v0
.end method
