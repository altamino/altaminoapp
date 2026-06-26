.class Lcom/narvii/list/refresh/SwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


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

    .line 1132
    iput-object p1, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1137
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$1000(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1138
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$1100(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F

    move-result p2

    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iget v0, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mOriginalOffsetTop:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    goto :goto_0

    .line 1140
    :cond_0
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$1100(Lcom/narvii/list/refresh/SwipeRefreshLayout;)F

    move-result p2

    :goto_0
    float-to-int p2, p2

    .line 1142
    iget-object v0, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    iget v1, v0, Lcom/narvii/list/refresh/SwipeRefreshLayout;->mFrom:I

    sub-int/2addr p2, v1

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p2, p2

    add-int/2addr v1, p2

    .line 1143
    invoke-static {v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$500(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/CircleImageView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ImageView;->getTop()I

    move-result p2

    sub-int/2addr v1, p2

    .line 1144
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-static {p2, v1, v0}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$1200(Lcom/narvii/list/refresh/SwipeRefreshLayout;IZ)V

    .line 1145
    iget-object p2, p0, Lcom/narvii/list/refresh/SwipeRefreshLayout$6;->this$0:Lcom/narvii/list/refresh/SwipeRefreshLayout;

    invoke-static {p2}, Lcom/narvii/list/refresh/SwipeRefreshLayout;->access$100(Lcom/narvii/list/refresh/SwipeRefreshLayout;)Lcom/narvii/list/refresh/MaterialProgressDrawable;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/narvii/list/refresh/MaterialProgressDrawable;->setArrowScale(F)V

    return-void
.end method
