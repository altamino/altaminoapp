.class Lcom/narvii/util/statusbar/StatusBarUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/statusbar/StatusBarUtils;->setTranslucentStatusBar(Lcom/narvii/app/NVContext;Landroid/graphics/drawable/Drawable;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$activity:Landroid/app/Activity;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iput p3, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$statusAlpha:I

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$allowMargin:Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 5

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$activity:Landroid/app/Activity;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$drawable:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    iget v2, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$statusAlpha:I

    .line 7
    .line 8
    instance-of v3, v0, Lcom/narvii/app/NVActivity;

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    move-object v3, v0

    .line 12
    .line 13
    check-cast v3, Lcom/narvii/app/NVActivity;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v3}, Lcom/narvii/app/NVActivity;->isActionBarOverlaying()Z

    .line 17
    move-result v3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    const/4 v3, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v3, 0x0

    .line 23
    .line 24
    :goto_0
    iget-boolean v4, p0, Lcom/narvii/util/statusbar/StatusBarUtils$2;->val$allowMargin:Z

    .line 25
    .line 26
    .line 27
    invoke-static {v0, v1, v2, v3, v4}, Lcom/narvii/util/statusbar/StatusBarUtils;->c(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;IZZ)V

    .line 28
    return-void
.end method

.method public onWindowDetached()V
    .locals 0

    return-void
.end method
