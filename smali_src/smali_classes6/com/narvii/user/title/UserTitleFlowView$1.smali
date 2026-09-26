.class Lcom/narvii/user/title/UserTitleFlowView$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/UserTitleFlowView$1;->this$0:Lcom/narvii/user/title/UserTitleFlowView;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/user/title/UserTitleFlowView$1;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/title/UserTitleFlowView$1;->this$0:Lcom/narvii/user/title/UserTitleFlowView;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/narvii/util/layouts/NVFlowLayout;->showingMoreView()Z

    .line 6
    move-result p1

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Lcom/narvii/user/title/UserTitleDialog;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/narvii/user/title/UserTitleFlowView$1;->this$0:Lcom/narvii/user/title/UserTitleFlowView;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/narvii/user/title/UserTitleFlowView$1;->val$user:Lcom/narvii/model/User;

    .line 19
    .line 20
    .line 21
    invoke-direct {p1, v0, v1}, Lcom/narvii/user/title/UserTitleDialog;-><init>(Landroid/content/Context;Lcom/narvii/model/User;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/narvii/user/title/UserTitleDialog;->show()V

    .line 25
    :cond_0
    return-void
.end method
