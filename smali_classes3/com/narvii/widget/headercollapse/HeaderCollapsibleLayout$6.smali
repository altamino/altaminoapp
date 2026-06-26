.class Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;
.super Ljava/lang/Object;
.source "HeaderCollapsibleLayout.java"

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

    .line 685
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {v0}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$600(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 689
    iget-object v1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {v1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$600(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$702(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;I)I

    .line 690
    iget v1, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v1, v1

    iget p3, p3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget p2, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float p2, p2, p1

    add-float/2addr v1, p2

    float-to-int p1, v1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 685
    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, p1, p2, p3}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$6;->evaluate(FLandroid/widget/LinearLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method
