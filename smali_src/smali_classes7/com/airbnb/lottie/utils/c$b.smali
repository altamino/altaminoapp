.class Lcom/airbnb/lottie/utils/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/utils/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/utils/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/utils/c;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/utils/c$b;->this$0:Lcom/airbnb/lottie/utils/c;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/utils/c$b;->this$0:Lcom/airbnb/lottie/utils/c;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/airbnb/lottie/utils/c;->d(Lcom/airbnb/lottie/utils/c;)Z

    .line 6
    move-result v0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/airbnb/lottie/utils/c$b;->this$0:Lcom/airbnb/lottie/utils/c;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Float;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 20
    move-result p1

    .line 21
    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/airbnb/lottie/utils/c;->e(Lcom/airbnb/lottie/utils/c;F)F

    .line 24
    :cond_0
    return-void
.end method
