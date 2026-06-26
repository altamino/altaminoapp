.class Lcom/narvii/user/profile/UserProfileFragment$17;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment;->follow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1720
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$17;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 1724
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$17;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/user/profile/UserProfileFragment;->follow(Z)V

    :cond_0
    return-void
.end method
