.class Lcom/narvii/invite/InviteContactFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/narvii/invite/InviteContactFragment$1$1;->this$1:Lcom/narvii/invite/InviteContactFragment$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    .line 2
    if-eqz p2, :cond_0

    .line 3
    goto :goto_0

    .line 4
    .line 5
    :cond_0
    iget-object p1, p0, Lcom/narvii/invite/InviteContactFragment$1$1;->this$1:Lcom/narvii/invite/InviteContactFragment$1;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/narvii/invite/InviteContactFragment$1;->this$0:Lcom/narvii/invite/InviteContactFragment;

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/narvii/invite/InviteContactFragment;->u(Lcom/narvii/invite/InviteContactFragment;)V

    .line 11
    :goto_0
    return-void
.end method
