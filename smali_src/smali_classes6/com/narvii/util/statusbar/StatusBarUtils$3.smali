.class Lcom/narvii/util/statusbar/StatusBarUtils$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/statusbar/StatusBarUtils;->setSystemUiFlagLightStatusBar(Lcom/narvii/app/NVContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalActivity:Landroid/app/Activity;

.field final synthetic val$isLightStatusBar:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/util/statusbar/StatusBarUtils$3;->val$finalActivity:Landroid/app/Activity;

    .line 3
    .line 4
    iput-boolean p2, p0, Lcom/narvii/util/statusbar/StatusBarUtils$3;->val$isLightStatusBar:Z

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/util/statusbar/StatusBarUtils$3;->val$finalActivity:Landroid/app/Activity;

    .line 3
    .line 4
    iget-boolean v1, p0, Lcom/narvii/util/statusbar/StatusBarUtils$3;->val$isLightStatusBar:Z

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->b(Landroid/app/Activity;Z)V

    .line 8
    return-void
.end method

.method public onWindowDetached()V
    .locals 0

    return-void
.end method
