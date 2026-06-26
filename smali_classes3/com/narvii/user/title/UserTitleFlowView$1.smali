.class Lcom/narvii/user/title/UserTitleFlowView$1;
.super Ljava/lang/Object;
.source "UserTitleFlowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/UserTitleFlowView;->setUser(Lcom/narvii/model/User;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/UserTitleFlowView;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/UserTitleFlowView;Lcom/narvii/model/User;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleFlowView$1;->this$0:Lcom/narvii/user/title/UserTitleFlowView;

    iput-object p2, p0, Lcom/narvii/user/title/UserTitleFlowView$1;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    iget-object p1, p0, Lcom/narvii/user/title/UserTitleFlowView$1;->this$0:Lcom/narvii/user/title/UserTitleFlowView;

    invoke-virtual {p1}, Lcom/narvii/util/layouts/NVFlowLayout;->showingMoreView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    new-instance p1, Lcom/narvii/user/title/UserTitleDialog;

    iget-object v0, p0, Lcom/narvii/user/title/UserTitleFlowView$1;->this$0:Lcom/narvii/user/title/UserTitleFlowView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/user/title/UserTitleFlowView$1;->val$user:Lcom/narvii/model/User;

    invoke-direct {p1, v0, v1}, Lcom/narvii/user/title/UserTitleDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V

    .line 98
    invoke-virtual {p1}, Lcom/narvii/user/title/UserTitleDialog;->show()V

    :cond_0
    return-void
.end method
