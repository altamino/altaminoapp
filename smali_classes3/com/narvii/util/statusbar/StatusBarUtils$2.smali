.class final Lcom/narvii/util/statusbar/StatusBarUtils$2;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$allowMargin:Z

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$statusAlpha:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZ)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$statusAlpha:I

    iput-boolean p4, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$allowMargin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 5

    .line 135
    iget-object v0, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$statusAlpha:I

    instance-of v3, v0, Lcom/narvii/app/NVActivity;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/narvii/app/NVActivity;

    .line 136
    invoke-virtual {v3}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$allowMargin:Z

    .line 135
    invoke-static {v0, v1, v2, v3, v4}, Lcom/narvii/util/statusbar/StatusBarUtils;->access$100(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    return-void
.end method

.method public onWindowDetached()V
    .locals 0

    return-void
.end method
