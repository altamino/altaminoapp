.class public final synthetic Lcom/narvii/master/-$$Lambda$MasterTopBar$C2qh_-eCYxsR29HQzpF7sgQkeMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/narvii/master/MasterTopBar;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterTopBar;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$C2qh_-eCYxsR29HQzpF7sgQkeMo;->f$0:Lcom/narvii/master/MasterTopBar;

    iput p2, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$C2qh_-eCYxsR29HQzpF7sgQkeMo;->f$1:I

    iput p3, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$C2qh_-eCYxsR29HQzpF7sgQkeMo;->f$2:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$C2qh_-eCYxsR29HQzpF7sgQkeMo;->f$0:Lcom/narvii/master/MasterTopBar;

    iget v1, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$C2qh_-eCYxsR29HQzpF7sgQkeMo;->f$1:I

    iget v2, p0, Lcom/narvii/master/-$$Lambda$MasterTopBar$C2qh_-eCYxsR29HQzpF7sgQkeMo;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/narvii/master/MasterTopBar;->lambda$expand$1$MasterTopBar(IILandroid/animation/ValueAnimator;)V

    return-void
.end method
