.class Lcom/narvii/account/AgeGatingFragment$3$1;
.super Ljava/lang/Object;
.source "AgeGatingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AgeGatingFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/account/AgeGatingFragment$3;


# direct methods
.method constructor <init>(Lcom/narvii/account/AgeGatingFragment$3;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3$1;->this$1:Lcom/narvii/account/AgeGatingFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 144
    iget-object p1, p0, Lcom/narvii/account/AgeGatingFragment$3$1;->this$1:Lcom/narvii/account/AgeGatingFragment$3;

    iget-object p1, p1, Lcom/narvii/account/AgeGatingFragment$3;->this$0:Lcom/narvii/account/AgeGatingFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void
.end method
