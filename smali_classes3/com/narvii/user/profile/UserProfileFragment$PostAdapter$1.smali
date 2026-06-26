.class Lcom/narvii/user/profile/UserProfileFragment$PostAdapter$1;
.super Ljava/lang/Object;
.source "UserProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;->createListEndItem(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;


# direct methods
.method constructor <init>(Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;)V
    .locals 0

    .line 1910
    iput-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1913
    iget-object p1, p0, Lcom/narvii/user/profile/UserProfileFragment$PostAdapter$1;->this$1:Lcom/narvii/user/profile/UserProfileFragment$PostAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/narvii/feed/BaseFeedListAdapter;->refresh(ILcom/narvii/util/Callback;)V

    return-void
.end method
