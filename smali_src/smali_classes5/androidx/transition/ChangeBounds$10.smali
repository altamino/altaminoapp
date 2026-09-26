.class Landroidx/transition/ChangeBounds$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->o(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/transition/ChangeBounds;

.field final synthetic val$drawable:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$sceneRoot:Landroid/view/ViewGroup;

.field final synthetic val$transitionAlpha:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Landroidx/transition/ChangeBounds$10;->this$0:Landroidx/transition/ChangeBounds;

    .line 3
    .line 4
    iput-object p2, p0, Landroidx/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    .line 5
    .line 6
    iput-object p3, p0, Landroidx/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    .line 9
    .line 10
    iput p5, p0, Landroidx/transition/ChangeBounds$10;->val$transitionAlpha:F

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Landroidx/transition/ChangeBounds$10;->val$sceneRoot:Landroid/view/ViewGroup;

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Landroidx/transition/ViewUtils;->b(Landroid/view/View;)Landroidx/transition/ViewOverlayImpl;

    .line 6
    move-result-object p1

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/transition/ChangeBounds$10;->val$drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Landroidx/transition/ViewOverlayImpl;->a(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/transition/ChangeBounds$10;->val$view:Landroid/view/View;

    .line 14
    .line 15
    iget v0, p0, Landroidx/transition/ChangeBounds$10;->val$transitionAlpha:F

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Landroidx/transition/ViewUtils;->h(Landroid/view/View;F)V

    .line 19
    return-void
.end method
