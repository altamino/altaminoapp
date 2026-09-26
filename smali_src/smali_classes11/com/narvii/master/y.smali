.class public final synthetic Lcom/narvii/master/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterTopBar;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterTopBar;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/y;->a:Lcom/narvii/master/MasterTopBar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/y;->a:Lcom/narvii/master/MasterTopBar;

    invoke-static {v0, p1}, Lcom/narvii/master/MasterTopBar;->c(Lcom/narvii/master/MasterTopBar;Landroid/animation/ValueAnimator;)V

    return-void
.end method
