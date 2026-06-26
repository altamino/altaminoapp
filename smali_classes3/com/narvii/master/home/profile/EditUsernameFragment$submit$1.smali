.class final Lcom/narvii/master/home/profile/EditUsernameFragment$submit$1;
.super Ljava/lang/Object;
.source "EditUsernameFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/EditUsernameFragment;->submit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/EditUsernameFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/EditUsernameFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment$submit$1;->this$0:Lcom/narvii/master/home/profile/EditUsernameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/narvii/master/home/profile/EditUsernameFragment$submit$1;->this$0:Lcom/narvii/master/home/profile/EditUsernameFragment;

    invoke-static {p1}, Lcom/narvii/master/home/profile/EditUsernameFragment;->access$getPostHelper$p(Lcom/narvii/master/home/profile/EditUsernameFragment;)Lcom/narvii/post/PostHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/post/PostHelper;->cancel()V

    return-void
.end method
