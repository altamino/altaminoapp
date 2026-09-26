.class Lcom/narvii/invite/InviteContactFragment$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/invite/InviteContactFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/invite/InviteContactFragment$1;


# direct methods
.method constructor <init>(Lcom/narvii/invite/InviteContactFragment$1;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$1$2;->this$1:Lcom/narvii/invite/InviteContactFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment$1$2;->this$1:Lcom/narvii/invite/InviteContactFragment$1;

    .line 3
    .line 4
    iget-object p1, p1, Lcom/narvii/invite/InviteContactFragment$1;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/narvii/invite/InviteContactFragment;->selectedView:Landroid/view/View;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 13
    :cond_0
    return-void
.end method
