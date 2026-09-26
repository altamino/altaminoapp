.class Lcom/airbnb/lottie/LottieAnimationView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$a;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/e;)V
    .locals 1
    .param p1    # Lcom/airbnb/lottie/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$a;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/e;)V

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView$a;->this$0:Lcom/airbnb/lottie/LottieAnimationView;

    .line 10
    const/4 v0, 0x0

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->c(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/a;)Lcom/airbnb/lottie/a;

    .line 14
    return-void
.end method
