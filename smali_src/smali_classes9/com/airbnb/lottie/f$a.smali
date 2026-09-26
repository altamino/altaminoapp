.class Lcom/airbnb/lottie/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/f;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/f;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/f$a;->this$0:Lcom/airbnb/lottie/f;

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
    iget-object p1, p0, Lcom/airbnb/lottie/f$a;->this$0:Lcom/airbnb/lottie/f;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/airbnb/lottie/f;->a(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/model/layer/b;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/airbnb/lottie/f$a;->this$0:Lcom/airbnb/lottie/f;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/airbnb/lottie/f;->a(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/model/layer/b;

    .line 14
    move-result-object p1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/airbnb/lottie/f$a;->this$0:Lcom/airbnb/lottie/f;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/airbnb/lottie/f;->b(Lcom/airbnb/lottie/f;)Lcom/airbnb/lottie/utils/c;

    .line 20
    move-result-object v0

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/airbnb/lottie/utils/c;->i()F

    .line 24
    move-result v0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/model/layer/b;->v(F)V

    .line 28
    :cond_0
    return-void
.end method
