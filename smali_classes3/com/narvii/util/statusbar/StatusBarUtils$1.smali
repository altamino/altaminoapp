.class final Lcom/narvii/util/statusbar/StatusBarUtils$1;
.super Ljava/lang/Object;
.source "StatusBarUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowAttachListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/util/statusbar/StatusBarUtils;->setStatusBarColor(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/narvii/util/statusbar/StatusBarUtils$1;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lcom/narvii/util/statusbar/StatusBarUtils$1;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowAttached()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/narvii/util/statusbar/StatusBarUtils$1;->val$activity:Landroid/app/Activity;

    iget v1, p0, Lcom/narvii/util/statusbar/StatusBarUtils$1;->val$color:I

    invoke-static {v0, v1}, Lcom/narvii/util/statusbar/StatusBarUtils;->access$000(Landroid/app/Activity;I)V

    return-void
.end method

.method public onWindowDetached()V
    .locals 0

    return-void
.end method
