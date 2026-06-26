.class final Lcom/narvii/master/home/profile/ProfileListFragment$retryListener$1;
.super Ljava/lang/Object;
.source "ProfileListFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/ProfileListFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/home/profile/ProfileListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/ProfileListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$retryListener$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 283
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$retryListener$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/master/home/profile/ProfileListFragment;->setRequestSent(Z)V

    .line 284
    iget-object p1, p0, Lcom/narvii/master/home/profile/ProfileListFragment$retryListener$1;->this$0:Lcom/narvii/master/home/profile/ProfileListFragment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/narvii/master/home/profile/ProfileListFragment;->sendGlobalProfileRequest$default(Lcom/narvii/master/home/profile/ProfileListFragment;ZILjava/lang/Object;)V

    return-void
.end method
