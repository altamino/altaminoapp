.class public final synthetic Lcom/narvii/master/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/MasterTopBar;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/MasterTopBar;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/x;->a:Lcom/narvii/master/MasterTopBar;

    iput p2, p0, Lcom/narvii/master/x;->b:I

    iput p3, p0, Lcom/narvii/master/x;->c:I

    iput p4, p0, Lcom/narvii/master/x;->d:I

    iput p5, p0, Lcom/narvii/master/x;->e:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/narvii/master/x;->a:Lcom/narvii/master/MasterTopBar;

    iget v1, p0, Lcom/narvii/master/x;->b:I

    iget v2, p0, Lcom/narvii/master/x;->c:I

    iget v3, p0, Lcom/narvii/master/x;->d:I

    iget v4, p0, Lcom/narvii/master/x;->e:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/narvii/master/MasterTopBar;->b(Lcom/narvii/master/MasterTopBar;IIIILandroid/animation/ValueAnimator;)V

    return-void
.end method
