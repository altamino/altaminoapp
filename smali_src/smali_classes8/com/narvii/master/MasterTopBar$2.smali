.class Lcom/narvii/master/MasterTopBar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/MasterTopBar$2;->this$0:Lcom/narvii/master/MasterTopBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 4
    .line 5
    iget-object p1, p0, Lcom/narvii/master/MasterTopBar$2;->this$0:Lcom/narvii/master/MasterTopBar;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/narvii/master/MasterTopBar;->h(Lcom/narvii/master/MasterTopBar;)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    .line 11
    const/16 v0, 0x8

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    return-void
.end method
