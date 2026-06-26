.class Lcom/narvii/master/MasterTopBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MasterTopBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/MasterTopBar;->expand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/MasterTopBar;


# direct methods
.method constructor <init>(Lcom/narvii/master/MasterTopBar;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/narvii/master/MasterTopBar$1;->this$0:Lcom/narvii/master/MasterTopBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 133
    iget-object p1, p0, Lcom/narvii/master/MasterTopBar$1;->this$0:Lcom/narvii/master/MasterTopBar;

    iget-object p1, p1, Lcom/narvii/master/MasterTopBar;->shadow:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
