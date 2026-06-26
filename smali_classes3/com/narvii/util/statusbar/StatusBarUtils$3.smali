.class final Lcom/narvii/util/statusbar/StatusBarUtils$3;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/statusbar/StatusBarUtils;->setSystemUiFlagLightStatusBar(Lcom/narvii/app/NVContext;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalActivity:Landroid/app/Activity;

.field final synthetic val$isLightStatusBar:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Z)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/narvii/util/statusbar/StatusBarUtils$3;->val$finalActivity:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/narvii/util/statusbar/StatusBarUtils$3;->val$isLightStatusBar:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/narvii/util/statusbar/StatusBarUtils$3;->val$finalActivity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/narvii/util/statusbar/StatusBarUtils$3;->val$isLightStatusBar:Z

    invoke-static {v0, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->access$200(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onWindowDetached()V
    .locals 0

    return-void
.end method
