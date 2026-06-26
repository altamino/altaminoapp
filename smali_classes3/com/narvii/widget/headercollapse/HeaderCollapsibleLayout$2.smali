.class Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HeaderCollapsibleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->invalidateHeader(Ljava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 162
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$300(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 156
    iget-object p1, p0, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout$2;->this$0:Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;

    invoke-static {p1}, Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;->access$300(Lcom/narvii/widget/headercollapse/HeaderCollapsibleLayout;)V

    return-void
.end method
