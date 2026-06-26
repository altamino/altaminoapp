.class Lcom/narvii/account/AccountBaseFragment$1;
.super Ljava/lang/Object;
.source "AccountBaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountBaseFragment;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountBaseFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/narvii/account/AccountBaseFragment$1;->this$0:Lcom/narvii/account/AccountBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/narvii/account/AccountBaseFragment$1;->this$0:Lcom/narvii/account/AccountBaseFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method
