.class Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->smoothChangeHeaderHeightTo(IJLandroid/animation/Animator$AnimatorListener;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Landroid/widget/LinearLayout$LayoutParams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 2
    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->d(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    .line 3
    invoke-static {v1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->d(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->e(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;I)V

    .line 4
    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v1, p2

    iget p3, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float/2addr p2, p1

    add-float/2addr v1, p2

    float-to-int p1, v1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;->evaluate(FLandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method
