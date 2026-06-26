.class Lcom/narvii/user/profile/UserProfileFragment$20;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->blockUser(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;

.field final synthetic val$isUnBlock:Z


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;Z)V
    .locals 0

    .line 2948
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$20;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iput-boolean p2, p0, Lcom/narvii/user/profile/UserProfileFragment$20;->val$isUnBlock:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 2951
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$20;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    iget-boolean p2, p0, Lcom/narvii/user/profile/UserProfileFragment$20;->val$isUnBlock:Z

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/narvii/user/profile/UserProfileFragment;->blockUser(ZZ)V

    return-void
.end method
