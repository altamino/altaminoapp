.class Lcom/narvii/master/MasterTopBar$3;
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

    .line 167
    iput-object p1, p0, Lcom/narvii/master/MasterTopBar$3;->this$0:Lcom/narvii/master/MasterTopBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 170
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 171
    iget-object p1, p0, Lcom/narvii/master/MasterTopBar$3;->this$0:Lcom/narvii/master/MasterTopBar;

    invoke-static {p1}, Lcom/narvii/master/MasterTopBar;->access$100(Lcom/narvii/master/MasterTopBar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    iget-object p1, p0, Lcom/narvii/master/MasterTopBar$3;->this$0:Lcom/narvii/master/MasterTopBar;

    invoke-static {p1}, Lcom/narvii/master/MasterTopBar;->access$100(Lcom/narvii/master/MasterTopBar;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
