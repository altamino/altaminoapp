.class Lcom/airbnb/lottie/LottieAnimationView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieAnimationView;->p(Ljava/lang/String;Lcom/airbnb/lottie/LottieAnimationView$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieAnimationView;

.field final synthetic val$animationName:Ljava/lang/String;

.field final synthetic val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$b;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView$b;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$c;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/airbnb/lottie/LottieAnimationView$b;->val$animationName:Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/e;)V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$b;->val$cacheStrategy:Lcom/airbnb/lottie/LottieAnimationView$c;

    .line 3
    .line 4
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->Strong:Lcom/airbnb/lottie/LottieAnimationView$c;

    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->d()Ljava/util/Map;

    .line 10
    move-result-object v0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$b;->val$animationName:Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    goto :goto_0

    .line 17
    .line 18
    :cond_0
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$c;->Weak:Lcom/airbnb/lottie/LottieAnimationView$c;

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->e()Ljava/util/Map;

    .line 24
    move-result-object v0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView$b;->val$animationName:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    .line 31
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$b;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/e;)V

    .line 40
    return-void
.end method
