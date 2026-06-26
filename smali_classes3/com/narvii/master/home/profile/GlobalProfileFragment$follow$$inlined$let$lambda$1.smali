.class final Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "GlobalProfileFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $confirmed$inlined:Z

.field final synthetic $updateFollowState$1$inlined:Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;

.field final synthetic this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    iput-boolean p2, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$1;->$confirmed$inlined:Z

    iput-object p3, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$1;->$updateFollowState$1$inlined:Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 895
    iget-object p1, p0, Lcom/narvii/master/home/profile/GlobalProfileFragment$follow$$inlined$let$lambda$1;->this$0:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->follow(Z)V

    :cond_0
    return-void
.end method
