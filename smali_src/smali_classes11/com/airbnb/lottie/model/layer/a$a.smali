.class Lcom/airbnb/lottie/model/layer/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/model/layer/a;->x()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/model/layer/a;

.field final synthetic val$inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/layer/a;Lcom/airbnb/lottie/animation/keyframe/c;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/a$a;->this$0:Lcom/airbnb/lottie/model/layer/a;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/airbnb/lottie/model/layer/a$a;->val$inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/c;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/a$a;->this$0:Lcom/airbnb/lottie/model/layer/a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/a$a;->val$inOutAnimation:Lcom/airbnb/lottie/animation/keyframe/c;

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/airbnb/lottie/animation/keyframe/a;->g()Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    .line 10
    check-cast v1, Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 14
    move-result v1

    .line 15
    .line 16
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    .line 18
    cmpl-float v1, v1, v2

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/layer/a;->c(Lcom/airbnb/lottie/model/layer/a;Z)V

    .line 27
    return-void
.end method
