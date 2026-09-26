.class Lcom/narvii/list/refresh/SwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/list/refresh/SwipeRefreshLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/narvii/list/refresh/SwipeRefreshLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    .line 2
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->i(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z

    .line 6
    move-result p2

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 11
    .line 12
    .line 13
    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->g(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F

    .line 14
    move-result p2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 17
    .line 18
    iget v0, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 22
    move-result v0

    .line 23
    int-to-float v0, v0

    .line 24
    sub-float/2addr p2, v0

    .line 25
    :goto_0
    float-to-int p2, p2

    .line 26
    goto :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->g(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F

    .line 32
    move-result p2

    .line 33
    goto :goto_0

    .line 34
    .line 35
    :goto_1
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 36
    .line 37
    iget v1, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mFrom:I

    .line 38
    sub-int/2addr p2, v1

    .line 39
    int-to-float p2, p2

    .line 40
    mul-float/2addr p2, p1

    .line 41
    float-to-int p2, p2

    .line 42
    add-int/2addr v1, p2

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->a(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/CircleImageView;

    .line 46
    move-result-object p2

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    .line 50
    move-result p2

    .line 51
    sub-int/2addr v1, p2

    .line 52
    .line 53
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 54
    const/4 v0, 0x0

    .line 55
    .line 56
    .line 57
    invoke-static {p2, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->n(Lcom/narvii/list/refresh/SwipeRefreshLayout;IZ)V

    .line 58
    .line 59
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    .line 60
    .line 61
    .line 62
    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->d(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/MaterialProgressDrawable;

    .line 63
    move-result-object p2

    .line 64
    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    sub-float/2addr v0, p1

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setArrowScale(F)V

    .line 70
    return-void
.end method
