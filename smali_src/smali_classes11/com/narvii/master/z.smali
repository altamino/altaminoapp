.class public final synthetic Lcom/narvii/master/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterTopBar;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterTopBar;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/z;->a:Lcom/narvii/master/MasterTopBar;

    iput p2, p0, Lcom/narvii/master/z;->b:I

    iput p3, p0, Lcom/narvii/master/z;->c:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/narvii/master/z;->a:Lcom/narvii/master/MasterTopBar;

    iget v1, p0, Lcom/narvii/master/z;->b:I

    iget v2, p0, Lcom/narvii/master/z;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/narvii/master/MasterTopBar;->d(Lcom/narvii/master/MasterTopBar;IILandroid/animation/ValueAnimator;)V

    return-void
.end method
