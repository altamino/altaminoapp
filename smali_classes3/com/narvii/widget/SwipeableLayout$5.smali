.class Lcom/narvii/widget/SwipeableLayout$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/SwipeableLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/SwipeableLayout;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/narvii/widget/SwipeableLayout$5;->this$0:Lcom/narvii/widget/SwipeableLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 306
    iget-object p1, p0, Lcom/narvii/widget/SwipeableLayout$5;->this$0:Lcom/narvii/widget/SwipeableLayout;

    invoke-static {p1}, Lcom/narvii/widget/SwipeableLayout;->access$000(Lcom/narvii/widget/SwipeableLayout;)Lcom/narvii/widget/SwipeableLayout$SwipeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/widget/SwipeableLayout$SwipeListener;->onLayoutSwiped()V

    return-void
.end method
