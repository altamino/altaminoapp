.class Lcom/narvii/user/profile/UserProfileFragment$7;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/user/profile/UserProfileFragment;
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

    .line 817
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 820
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090707

    if-ne v0, v1, :cond_0

    .line 821
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->popupCustomMenu()V

    goto :goto_0

    .line 822
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090706

    if-ne p1, v0, :cond_1

    .line 823
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$7;->this$0:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-virtual {p1}, Lcom/narvii/user/profile/UserProfileFragment;->popupOnlineStatusMenu()V

    :cond_1
    :goto_0
    return-void
.end method
