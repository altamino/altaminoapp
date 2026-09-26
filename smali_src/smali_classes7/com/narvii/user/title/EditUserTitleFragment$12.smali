.class Lcom/narvii/user/title/EditUserTitleFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$12;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/user/title/EditUserTitleFragment$12;->this$0:Lcom/narvii/user/title/EditUserTitleFragment;

    .line 3
    .line 4
    iget-boolean p2, p1, Lcom/narvii/user/title/EditUserTitleFragment;->scrollToBottom:Z

    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    const/4 p2, 0x0

    .line 8
    .line 9
    iput-boolean p2, p1, Lcom/narvii/user/title/EditUserTitleFragment;->scrollToBottom:Z

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/user/title/EditUserTitleFragment;->scrollView:Lcom/narvii/widget/ScrollViewWithMaxHeight;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/util/ViewUtils;->scrollToBottom(Landroid/view/ViewGroup;)V

    .line 15
    :cond_0
    return-void
.end method
