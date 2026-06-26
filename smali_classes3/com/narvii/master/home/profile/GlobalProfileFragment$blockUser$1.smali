.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$1;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->blockUser(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $isUnBlock:Z

.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    iput-boolean p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$1;->$isUnBlock:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 299
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    iget-boolean p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$blockUser$1;->$isUnBlock:Z

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->access$blockUser(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZZ)V

    return-void
.end method
