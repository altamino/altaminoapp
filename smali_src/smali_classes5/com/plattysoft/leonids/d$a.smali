.class Lcom/plattysoft/leonids/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/plattysoft/leonids/d;->t(Landroid/view/animation/Interpolator;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/plattysoft/leonids/d;


# direct methods
.method constructor <init>(Lcom/plattysoft/leonids/d;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/plattysoft/leonids/d$a;->this$0:Lcom/plattysoft/leonids/d;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 5
    .line 6
    check-cast p1, Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 10
    move-result p1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/plattysoft/leonids/d$a;->this$0:Lcom/plattysoft/leonids/d;

    .line 13
    int-to-long v1, p1

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/plattysoft/leonids/d;->b(Lcom/plattysoft/leonids/d;J)V

    .line 17
    return-void
.end method
