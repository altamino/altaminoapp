.class final Lcom/narvii/user/follow/UserFollowView$init$2$$special$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "UserFollowView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/user/follow/UserFollowView$init$2;->invoke(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $success$inlined:Z

.field final synthetic this$0:Lcom/narvii/user/follow/UserFollowView$init$2;


# direct methods
.method constructor <init>(Lcom/narvii/user/follow/UserFollowView$init$2;Z)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/user/follow/UserFollowView$init$2$$special$$inlined$let$lambda$1;->this$0:Lcom/narvii/user/follow/UserFollowView$init$2;

    iput-boolean p2, p0, Lcom/narvii/user/follow/UserFollowView$init$2$$special$$inlined$let$lambda$1;->$success$inlined:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/narvii/user/follow/UserFollowView$init$2$$special$$inlined$let$lambda$1;->this$0:Lcom/narvii/user/follow/UserFollowView$init$2;

    iget-object v0, v0, Lcom/narvii/user/follow/UserFollowView$init$2;->this$0:Lcom/narvii/user/follow/UserFollowView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f03f1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;II)Lcom/narvii/util/NVToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/narvii/util/NVToast;->show()V

    return-void
.end method
