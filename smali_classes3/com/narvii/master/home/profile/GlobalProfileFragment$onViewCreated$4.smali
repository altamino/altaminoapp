.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$4;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 385
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$onViewCreated$4;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$startEditBio(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    return-void
.end method
