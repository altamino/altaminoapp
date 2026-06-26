.class public final synthetic Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/master/MasterTopBar;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterTopBar;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;->f$0:Lcom/narvii/master/MasterTopBar;

    iput p2, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;->f$1:I

    iput p3, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;->f$2:I

    iput p4, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;->f$3:I

    iput p5, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;->f$4:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;->f$0:Lcom/narvii/master/MasterTopBar;

    iget v1, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;->f$1:I

    iget v2, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;->f$2:I

    iget v3, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;->f$3:I

    iget v4, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$H5I9t4SsINnXEs3e8Lxp0ouAJHg;->f$4:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/narvii/master/MasterTopBar;->lambda$collapse$5$MasterTopBar(IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method
