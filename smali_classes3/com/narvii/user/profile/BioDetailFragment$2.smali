.class Lcom/narvii/user/profile/BioDetailFragment$2;
.super Ljava/lang/Object;
.source "BioDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/BioDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/BioDetailFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/BioDetailFragment;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$2;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/narvii/user/profile/BioDetailFragment$2;->this$0:Lcom/narvii/user/profile/BioDetailFragment;

    const-string v0, "Edit Bio"

    invoke-virtual {p1, v0}, Lcom/narvii/user/profile/BioDetailFragment;->editProfile(Ljava/lang/String;)V

    return-void
.end method
