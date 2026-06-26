.class Lcom/narvii/user/title/EditUserTitleFragment$12;
.super Ljava/lang/Object;
.source "EditUserTitleFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/title/EditUserTitleFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/title/EditUserTitleFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/title/EditUserTitleFragment;)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$12;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 396
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$12;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    iget-boolean p2, p1, Lcom/narvii/user/title/EditUserTitleFragment;->scrollToBottom:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 397
    iput-boolean p2, p1, Lcom/narvii/user/title/EditUserTitleFragment;->scrollToBottom:Z

    .line 398
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->scrollToBottom(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
